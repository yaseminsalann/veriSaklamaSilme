# veriSaklamaSilme
UserDefaults ile  küçük verileri saklama ve silme işlemi gerçekleştirilen ios mobil uygulama projesidir.
Swift programlama dilinde UserDefaults, bir uygulamanın kullanıcı ayarlarını veya küçük miktarda veriyi kalıcı olarak depolamak için kullanılan bir yapılandırmadır. Bu, bir uygulamanın kapatılıp yeniden başlatılmasından sonra bile verilerin korunmasını sağlar. Genellikle kullanıcı tercihlerini, uygulama ayarlarını veya basit veri parçalarını saklamak için kullanılır.

UserDefaults Kullanımı:
Veri Kaydetme: set(_:forKey:) yöntemi kullanılır.
Veri Okuma: object(forKey:) veya türüne özel metotlar (ör. string(forKey:)) kullanılır.
Veri Silme: removeObject(forKey:) ile bir anahtarın değeri silinir.

Desteklenen Veri Türleri
String
Int
Float
Double
Bool
URL
Array
Dictionary

Önemli Notlar:
UserDefaults, büyük miktarda veri veya hassas veriler için kullanılmamalıdır. Hassas veriler için Keychain kullanmanız önerilir.
Depolanan veriler küçük ve hafif olmalıdır, aksi takdirde performans sorunlarına yol açabilir.
UserDefaults, uygulamanın sandbox ortamında saklanır ve diğer uygulamalar tarafından erişilemez.

Kullanım Alanları:
Kullanıcı tercihlerini saklamak (ör. tema modu, dil ayarları).
Uygulamanın ilk kez başlatılıp başlatılmadığını kontrol etmek.
Basit yapılandırma ayarlarını depolamak.
