using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.IO;
using Microsoft.Win32;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Threading;

namespace WpfApp6
{
    public partial class MainWindow : Window
    {
        OpenFileDialog openFileDialog = new OpenFileDialog();
        ObservableCollection<Osoby> kolekcja = new ObservableCollection<Osoby>();
        ObservableCollection<Osoby> losowaKolekcja = new ObservableCollection<Osoby>();

        private BackgroundWorker backgroundWorker = null;

        public MainWindow()
        {
            InitializeComponent();
            
        }

        private void LosujButton_Click(object sender, RoutedEventArgs e)
        {
            losowaKolekcja.Clear();
            LosujButton.IsEnabled = false;
            InicjalizujBackgroundWorkera();
            DG.Visibility = Visibility.Hidden;
            Progress.Value = 0;
            backgroundWorker.RunWorkerAsync();
        }

        private void InicjalizujBackgroundWorkera()
        {
            if (backgroundWorker == null)
            {
                backgroundWorker = new BackgroundWorker();
                backgroundWorker.DoWork += new DoWorkEventHandler(backgroundWorker_DoWork);
                backgroundWorker.RunWorkerCompleted += new RunWorkerCompletedEventHandler(backgroundWorker_RunWorkerCompleted);
                backgroundWorker.ProgressChanged += new ProgressChangedEventHandler(backgroundWorker_ProgressCahnged);
                backgroundWorker.WorkerReportsProgress = true;
                backgroundWorker.WorkerSupportsCancellation = false;
            }
        }

        private void backgroundWorker_ProgressCahnged(object sender, ProgressChangedEventArgs e)
        {
            ProgressRing.IsActive = true;
            Random rnd = new Random(DateTime.Now.Millisecond);
            Progress.Value = e.ProgressPercentage;
            int numer = rnd.Next(0, kolekcja.Count);
            losowaKolekcja.Add(kolekcja[numer]);
            kolekcja.RemoveAt(numer);
        }

        private void backgroundWorker_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
        {
            DG.Visibility = Visibility.Visible;
            ProgressRing.IsActive = false;
           // DG.Columns[0].SortDirection = ListSortDirection.Ascending;
            DG.ItemsSource = losowaKolekcja.OrderBy(p => p.Numer).ToList(); //sortowanie po numerze wylosowanych osób
        }

        private void backgroundWorker_DoWork(object sender, DoWorkEventArgs e)
        {
           
            for (int i = 1; i <= 5; ++i)
            {
                backgroundWorker.ReportProgress(i);
                Thread.Sleep(1000);
            }
           
         
        }

        private void WczytajButton_Click(object sender, RoutedEventArgs e)
        {
            string sciezka = "";
            string linia = "";
            string[] tablica;
            char[] separator = new char[] { ';', ',' };
          //  txbImie.Clear();
           // txbNazwisko.Clear();

            if (openFileDialog.ShowDialog() == true)
            {
                sciezka = openFileDialog.FileName;
                kolekcja.Clear();
                DG.ItemsSource = "";
                int i = 1;
                
                try
                {
                    StreamReader streamReader = new StreamReader(sciezka, Encoding.Default);
                    while(!streamReader.EndOfStream)
                    {
                        linia = streamReader.ReadLine();
                        tablica = linia.Split(separator, StringSplitOptions.RemoveEmptyEntries);
                        if (tablica[1] != "Imie")
                            kolekcja.Add(new Osoby() { Numer = i++, Imie = tablica[1].ToString(), Nazwisko = tablica[2].ToString() }); //[1], [2]!
                        //    txbImie.Text += tablica[i] + " ";
                      //      txbNazwisko.Text += tablica[i+1] + " ";
                    }
                    streamReader.Close(); 
                }
                catch(Exception ex)
                { 
                    MessageBox.Show(ex.Message);
                }
            }
            DG.ItemsSource = kolekcja;
            LosujButton.IsEnabled = true;
        }

    }
}
