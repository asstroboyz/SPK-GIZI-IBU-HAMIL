<template>
  <section class="content mt-3">
    <div class="container mx-auto">
      <div class="card card-info p-4">
        <h2 class="text-2xl font-bold mb-4">Analytical Hierarchy Process (AHP)</h2>
        <p class="mb-4">
          Analytic Hierarchy Process (AHP) merupakan suatu model pendukung keputusan yang dikembangkan oleh Thomas L. Saaty. Model ini menguraikan masalah multi faktor atau multi kriteria yang kompleks menjadi suatu hirarki. Hirarki didefinisikan sebagai representasi dari sebuah permasalahan kompleks dalam struktur multi-level, di mana level pertama adalah tujuan, diikuti oleh level faktor, kriteria, sub-kriteria, dan seterusnya hingga level terakhir dari alternatif.
        </p>
        <p class="mb-4">
          AHP membantu pengambil keputusan untuk memperoleh solusi terbaik dengan mendekomposisi permasalahan kompleks ke dalam bentuk yang lebih sederhana, kemudian melakukan sintesis terhadap berbagai faktor yang terlibat. AHP mempertimbangkan aspek kualitatif dan kuantitatif dari suatu keputusan dan mengurangi kompleksitasnya dengan membandingkan berbagai kriteria yang dipilih untuk mendapatkan hasil.
        </p>
        <p class="mb-4">
          AHP sering digunakan sebagai metode pemecahan masalah dibanding metode lain karena beberapa alasan berikut:
        </p>
        <ol class="list-decimal list-inside mb-4">
          <li>Struktur yang berhirarki, sebagai konsekuensi dari kriteria yang dipilih hingga subkriteria yang paling dalam.</li>
          <li>Memperhitungkan validitas sampai batas toleransi inkonsistensi berbagai kriteria dan alternatif yang dipilih oleh pengambil keputusan.</li>
          <li>Memperhitungkan daya tahan output analisis sensitivitas pengambilan keputusan.</li>
        </ol>
        <p class="mb-4">
          Penggunaan AHP bukan hanya untuk institusi pemerintahan atau swasta, namun juga dapat diaplikasikan untuk keperluan individu, terutama dalam penelitian yang berkaitan dengan kebijakan atau perumusan strategi prioritas. AHP dapat diandalkan karena prioritas disusun dari berbagai pilihan kriteria yang didekomposisi terlebih dahulu, sehingga penetapan prioritas didasarkan pada proses yang terstruktur dan masuk akal.
        </p>
        <h3 class="text-xl font-semibold mt-6 mb-2">Tabel Tingkat Kepentingan Menurut Saaty (1980)</h3>
        <table class="w-full border-collapse border border-blue-500 mb-4">
          <thead>
            <tr>
              <th class="border border-blue-500 p-2">Nilai Numerik</th>
              <th class="border border-blue-500 p-2">Tingkat Kepentingan <em>(Preference)</em></th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td class="border border-blue-500 text-center p-2">1</td>
              <td class="border border-blue-500 p-2">Sama pentingnya <em>(Equal Importance)</em></td>
            </tr>
            <tr>
              <td class="border border-blue-500 text-center p-2">2</td>
              <td class="border border-blue-500 p-2">Sama hingga sedikit lebih penting</td>
            </tr>
            <tr>
              <td class="border border-blue-500 text-center p-2">3</td>
              <td class="border border-blue-500 p-2">Sedikit lebih penting <em>(Slightly more importance)</em></td>
            </tr>
            <tr>
              <td class="border border-blue-500 text-center p-2">4</td>
              <td class="border border-blue-500 p-2">Sedikit lebih hingga jelas lebih penting</td>
            </tr>
            <tr>
              <td class="border border-blue-500 text-center p-2">5</td>
              <td class="border border-blue-500 p-2">Jelas lebih penting <em>(Materially more importance)</em></td>
            </tr>
            <tr>
              <td class="border border-blue-500 text-center p-2">6</td>
              <td class="border border-blue-500 p-2">Jelas hingga sangat jelas lebih penting</td>
            </tr>
            <tr>
              <td class="border border-blue-500 text-center p-2">7</td>
              <td class="border border-blue-500 p-2">Sangat jelas lebih penting <em>(Significantly more importance)</em></td>
            </tr>
            <tr>
              <td class="border border-blue-500 text-center p-2">8</td>
              <td class="border border-blue-500 p-2">Sangat jelas hingga mutlak lebih penting</td>
            </tr>
            <tr>
              <td class="border border-blue-500 text-center p-2">9</td>
              <td class="border border-blue-500 p-2">Mutlak lebih penting <em>(Absolutely more importance)</em></td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
  </section>
</template>
