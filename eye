<!doctype html>
<html lang='ar'>
<head>
  <meta charset='utf-8'>
  <meta name='viewport' content='width=device-width,initial-scale=1'>
  <title>Eye of Egypt | موسوعة المعالم المصرية</title>
  <style>
    :root {
      --bg-dark: #0f172a;
      --card-bg: #1e293b;
      --accent: #d4af37;
      --accent-hover: #b5952f;
      --pano-btn: #0ea5e9;
      --pano-hover: #0284c7;
      --text-main: #f1f5f9;
      --text-secondary: #cbd5e1;
      --btn-secondary: #334155;
    }

    body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background-color: var(--bg-dark);
      color: var(--text-main);
      margin: 0;
      padding: 20px;
      direction: rtl;
    }

    header {
      text-align: center;
      margin-bottom: 40px;
      border-bottom: 2px solid var(--accent);
      padding-bottom: 20px;
    }

    h1 {
      font-size: 2.8rem;
      color: var(--accent);
      margin: 0;
      text-transform: uppercase;
      letter-spacing: 1px;
      text-shadow: 0 2px 10px rgba(0,0,0,0.5);
    }

    .subtitle {
      color: var(--text-secondary);
      margin-top: 10px;
      font-size: 1.2rem;
    }

    .grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(350px, 1fr));
      gap: 30px;
    }

    .card {
      background: var(--card-bg);
      border-radius: 16px;
      overflow: hidden;
      box-shadow: 0 10px 25px rgba(0,0,0,0.5);
      border: 1px solid rgba(212, 175, 55, 0.1);
      transition: transform 0.3s ease, box-shadow 0.3s ease;
      display: flex;
      flex-direction: column;
    }

    .card:hover {
      transform: translateY(-8px);
      box-shadow: 0 20px 40px rgba(0,0,0,0.6);
      border-color: rgba(212, 175, 55, 0.4);
    }

    .media {
      height: 250px;
      width: 100%;
      object-fit: cover;
      display: block;
      border-bottom: 3px solid var(--accent);
      background-color: #334155;
    }

    .card-body {
      padding: 20px;
      flex-grow: 1;
      display: flex;
      flex-direction: column;
    }

    .card-title {
      font-size: 1.5rem;
      color: var(--accent);
      margin: 0 0 10px 0;
      font-weight: bold;
    }

    .card-short {
      font-size: 1rem;
      color: var(--text-secondary);
      margin-bottom: 25px;
      line-height: 1.6;
      flex-grow: 1;
    }

    .actions {
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 10px;
      margin-top: auto;
    }

    .btn-full-width {
      grid-column: span 2;
    }

    button, .btn {
      border: none;
      padding: 12px;
      border-radius: 8px;
      cursor: pointer;
      font-weight: bold;
      text-decoration: none;
      font-size: 0.95rem;
      transition: all 0.2s;
      text-align: center;
      display: inline-block;
    }

    .btn-toggle {
      background: var(--accent);
      color: #0f172a;
    }
    .btn-toggle:hover { background: var(--accent-hover); }

    .btn-pano {
      background: var(--pano-btn);
      color: white;
    }
    .btn-pano:hover { background: var(--pano-hover); }

    .btn.secondary {
      background: var(--btn-secondary);
      color: #fff;
    }
    .btn.secondary:hover { background: #475569; }

    .more-details {
      display: none;
      margin-top: 20px;
      background: rgba(0, 0, 0, 0.4);
      padding: 20px;
      border-radius: 12px;
      border-top: 1px solid var(--btn-secondary);
      animation: fadeIn 0.4s ease;
      grid-column: span 2;
    }

    .full-desc {
      font-size: 1.05rem;
      line-height: 1.8;
      color: #e2e8f0;
      margin-bottom: 20px;
      text-align: justify;
    }

    .map-container {
      width: 100%;
      height: 300px;
      border-radius: 8px;
      overflow: hidden;
      border: 2px solid var(--btn-secondary);
      background: #000;
    }

    iframe {
      width: 100%;
      height: 100%;
      border: 0;
    }

    @keyframes fadeIn {
      from { opacity: 0; transform: translateY(-10px); }
      to { opacity: 1; transform: translateY(0); }
    }

    @media (max-width: 600px) {
      .grid { grid-template-columns: 1fr; }
      .media { height: 220px; }
    }
  </style>
</head>
<body dir='rtl'>

  <header>
    <h1>👁️ Eye of Egypt</h1>
    <div class="subtitle">الموسوعة الشاملة لكنوز مصر | صور وتفاصيل وجولات 360°</div>
  </header>

  <main class='grid' id='attractions'></main>

  <footer style="text-align: center; margin-top: 50px; padding: 20px; border-top: 1px solid #334155; color: var(--text-secondary);">
    <p>جميع الحقوق محفوظة © 2025 Eye of Egypt</p>
  </footer>

  <script>
    const attractions = [
      { name: 'أهرامات الجيزة', short: 'عجيبة الدنيا القديمة الباقية، ومقابر ملوك الأسرة الرابعة.', full: 'تتكون من الهرم الأكبر (خوفو)، خفرع، ومنقرع. بنيت قبل 4500 عام بدقة هندسية وفلكية مذهلة. الهرم الأكبر يتكون من 2.3 مليون حجر، وكان يغطى بطبقة من الحجر الجيري الأبيض المصقول.', img: 'https://upload.wikimedia.org/wikipedia/commons/a/af/All_Gizah_Pyramids.jpg', lat: 29.9792, lng: 31.1342 },
      { name: 'أبو الهول', short: 'الحارس الأسطوري برأس إنسان وجسد أسد.', full: 'تمثال ضخم منحوت من صخرة واحدة، يمثل الملك خفرع. يرمز للقوة (الأسد) والحكمة (الإنسان).', img: 'https://upload.wikimedia.org/wikipedia/commons/f/f6/Great_Sphinx_of_Giza_-_20080716a.jpg', lat: 29.9753, lng: 31.1376 },
      { name: 'قلعة صلاح الدين', short: 'الحصن المنيع ومسجد محمد علي (المرمر).', full: 'تقع على تلة المقطم وتوفر أفضل إطلالة للقاهرة. تضم مسجد محمد علي الذي يشبه المساجد العثمانية، ومتحف الشرطة والمتحف الحربي.', img: 'https://egymonuments.gov.eg/media/2329/11.jpg?crop=0.085433156712032207,0.0063409072275135226,0.096589810938723319,0.058006619317293319&cropmode=percentage&width=645&height=423&rnd=133881474620000000', lat: 30.0286, lng: 31.2625 },
      { name: 'معبد الكرنك', short: 'أكبر مجمع ديني بناه الإنسان على مر العصور.', full: 'استمر بناؤه 1500 عام. يشتهر بصالة الأعمدة الكبرى التي تضم 134 عموداً شاهقاً مزينة بالنقوش والألوان.', img: 'https://upload.wikimedia.org/wikipedia/commons/6/60/Temple_de_Louxor_68.jpg', lat: 25.7196, lng: 32.6586 },
      { name: 'معبد الأقصر', short: 'درة معابد البر الشرقي، بناه أمنحتب الثالث ورمسيس الثاني.', full: 'يقع في قلب مدينة الأقصر. يتميز بمدخله الضخم بتمثالي رمسيس الثاني والمسلة الشاهقة.', img: 'https://upload.wikimedia.org/wikipedia/commons/4/4b/Luxor_Temple_at_night.jpg', lat: 25.7001, lng: 32.6397 },
      { name: 'وادي الملوك', short: 'مكان راحة الفراعنة العظام ومقبرة توت عنخ آمون.', full: 'يقع في البر الغربي، ويضم مقابر محفورة في الجبل للحفاظ عليها من اللصوص. جدرانها مغطاة بنقوش كتاب الموتى بألوان زاهية.', img: 'https://upload.wikimedia.org/wikipedia/commons/0/05/Valley_of_the_Kings_Panorama.jpg', lat: 25.7423, lng: 32.6019 },
      { name: 'معبد حتشبسوت', short: 'المعبد الجنائزي المنحوت في حضن الجبل.', full: 'يتميز بتصميمه الفريد من 3 طوابق وشرفات مفتوحة.', img: 'https://upload.wikimedia.org/wikipedia/commons/b/b3/Temple_of_Hatshepsut_01.jpg', lat: 25.7382, lng: 32.6033 },
      { name: 'معبد أبو سمبل', short: 'معجزة تعامد الشمس وإنقاذ التاريخ.', full: 'معبدان منحوتان في الصخر لرمسيس الثاني وزوجته نفرتاري.', img: 'https://upload.wikimedia.org/wikipedia/commons/2/23/Abu_Simbel_Temple_May_30_2007.jpg', lat: 22.3364, lng: 31.6267 },
      { name: 'معبد فيلة', short: 'جوهرة النيل، معبد الحب والجمال.', full: 'يقع على جزيرة وسط النيل بأسوان، مخصص للإلهة إيزيس.', img: 'https://egymonuments.gov.eg/media/2509/dsc_1871c.jpg?crop=0.085271317829457363,0,0.042635658914728682,0.141889312241527&cropmode=percentage&width=645&height=423&rnd=133748558720000000', lat: 24.0152, lng: 32.8800 }
    ];

    const container = document.getElementById('attractions');

    function createCard(item, index) {
      const card = document.createElement('article');
      card.className = 'card';

      const panoUrl = `https://www.google.com/maps/@?api=1&map_action=pano&viewpoint=${item.lat},${item.lng}`;
      const dirUrl = `https://www.google.com/maps/dir/?api=1&destination=${item.lat},${item.lng}`;
      const mapEmbedUrl = `https://maps.google.com/maps?q=${item.lat},${item.lng}&t=k&z=15&ie=UTF8&iwloc=&output=embed`;

      card.innerHTML = `
        <img class='media' src='${item.img}' alt='${item.name}' loading='lazy'>
        <div class='card-body'>
          <h2 class='card-title'>${item.name}</h2>
          <div class='card-short'>${item.short}</div>

          <div class='actions'>
            <button class='btn btn-toggle btn-full-width' onclick="toggleDetails(${index})">📝 عرض التفاصيل الكاملة</button>
            <a class='btn btn-pano' target='_blank' rel='noopener' href='${panoUrl}'>🌐 عرض 360°</a>
            <a class='btn secondary' target='_blank' rel='noopener' href='${dirUrl}'>📍 الاتجاهات</a>

            <div class='more-details' id='details-${index}'>
              <div class='full-desc'>${item.full}</div>
              <div class="map-container">
                 <iframe src="${mapEmbedUrl}" loading="lazy"></iframe>
              </div>
            </div>
          </div>
        </div>
      `;
      return card;
    }

    function toggleDetails(index) {
      const details = document.getElementById(`details-${index}`);
      const btn = details.parentElement.querySelector('.btn-toggle');

      if (details.style.display === 'block') {
        details.style.display = 'none';
        btn.textContent = '📝 عرض التفاصيل الكاملة';
      } else {
        document.querySelectorAll('.more-details').forEach(el => el.style.display = 'none');
        document.querySelectorAll('.btn-toggle').forEach(b => b.textContent = '📝 عرض التفاصيل الكاملة');

        details.style.display = 'block';
        btn.textContent = '❌ إخفاء التفاصيل';
      }
    }

    attractions.forEach((item, index) => {
      container.appendChild(createCard(item, index));
    });

  </script>
</body>
</html>
