<?php
/**
 * Sources English lexicon topic
 *
 * @language en
 * @package modx
 * @subpackage lexicon
 */
$_lang['access'] = 'Права доступу';
$_lang['base_path'] = 'Базовий шлях';
$_lang['base_path_relative'] = 'Базовий шлях відносний?';
$_lang['base_url'] = 'Базовий URL';
$_lang['base_url_relative'] = 'Базовий URL відносний?';
$_lang['minimum_role'] = 'Мінімальна роль';
$_lang['path_options'] = 'Параметри шляху';
$_lang['policy'] = 'Політика';
$_lang['source'] = 'Джерело медіа';
$_lang['source_access_add'] = 'Add User Group';
$_lang['source_access_remove'] = 'Видалити доступ';
$_lang['source_access_remove_confirm'] = 'Ви впевнені, що хочете видалити доступ до цього джерела медіа даній групі користувачів?';
$_lang['source_access_update'] = 'Редагувати доступ';
$_lang['source_create'] = 'Створити нове джерело медіа';
$_lang['source_description_desc'] = 'Короткий опис джерела медіа.';
$_lang['source_duplicate'] = 'Дублювати джерело медіа';
$_lang['source_err_ae_name'] = 'Джерело медіа з таким іменем вже існує! Будь ласка, вкажіть інше ім\'я.';
$_lang['source_err_nf'] = 'Джерело медіа не знайдене!';
$_lang['source_err_nfs'] = 'Не знайдено джерело медіа з ідентифікатором: [[+id]].';
$_lang['source_err_ns'] = 'Будь ласка, вкажіть джерело медіа.';
$_lang['source_err_ns_name'] = 'Будь ласка, вкажіть ім\'я джерела медіа.';
$_lang['source_name_desc'] = 'Ім\'я джерела медіа.';
$_lang['source_properties.intro_msg'] = 'Параметри джерела медіа-файлів представлені нижче.';
$_lang['source_remove'] = 'Видалити джерело медіа';
$_lang['source_remove_confirm'] = 'Ви впевнені, що хочете видалити це джерело медіа-файлів? Це може порушити роботу змінних шаблонів, які були пов\'язані з цим джерелом.';
$_lang['source_remove_multiple'] = 'Видалити декілька джерел медіа';
$_lang['source_remove_multiple_confirm'] = 'Ви впевнені, що хочете видалити ці джерела медіа? Це може порушити роботу змінних шаблонів, які були пов\'язані з цими джерелами.';
$_lang['source_update'] = 'Редагувати джерело медіа';
$_lang['source_type'] = 'Тип джерела';
$_lang['source_type_desc'] = 'Тип або драйвер джерела медіа. Джерело використовуватиме цей драйвер для підключення при зборі даних. Наприклад: "Файлова система" працюватиме з файлами з файлової системи, "S3" отримуватиме файли з кошика S3.';
$_lang['source_type.file'] = 'Файлова система';
$_lang['source_type.file_desc'] = 'Використовує файлову систему сервера.';
$_lang['source_type.s3'] = 'Amazon S3';
$_lang['source_type.s3_desc'] = 'Використовує сховище Amazon S3.';
$_lang['source_types'] = 'Типи джерел';
$_lang['source_types.intro_msg'] = 'Це список усіх встановлених типів джерел медіа-файлів у Вашій MODX.';
$_lang['source.access.intro_msg'] = 'Тут Ви можете надати доступ до джерел медіа-файлів певним групам користувачів та призначити політики доступу цим групам користувачів. Джерело медіа, що не прикріплено до жодної групи користувачів, буде доступне для усіх користувачів Менеджеру.';
$_lang['sources'] = 'Джерела медіа';
$_lang['sources.intro_msg'] = 'Тут можна керувати усіма джерелами медіа-файлів.';
$_lang['user_group'] = 'User Group';

/* file source type */
$_lang['allowedFileTypes'] = 'allowedFileTypes';
$_lang['prop_file.allowedFileTypes_desc'] = 'Якщо вказано, будуть відображатися лише файли з певними розширеннями. Будь ласка, вкажіть перелік розширень через кому, без символу "." перед розширеннями.';
$_lang['basePath'] = 'basePath';
$_lang['prop_file.basePath_desc'] = 'Шлях до файлів джерела.';
$_lang['basePathRelative'] = 'basePathRelative';
$_lang['prop_file.basePathRelative_desc'] = 'Якщо параметр "Базовий шлях" вказаний відносно шляху встановлення MODX, встановіть значення "Так".';
$_lang['baseUrl'] = 'baseUrl';
$_lang['prop_file.baseUrl_desc'] = 'URL, за яким буде доступне це джерело медіа-файлів.';
$_lang['baseUrlPrependCheckSlash'] = 'baseUrlPrependCheckSlash';
$_lang['prop_file.baseUrlPrependCheckSlash_desc'] = 'Якщо встановлено "Так", MODX лише поставить перед іменем baseUrl, якщо на початку URL не буде знайдено прямого слешу (/) у момент обробки змінної шаблону. Корисно для встановлення значення змінних шаблону поза baseUrl.';
$_lang['baseUrlRelative'] = 'baseUrlRelative';
$_lang['prop_file.baseUrlRelative_desc'] = 'Якщо параметр "Базовий URL" вказаний відносно до URL встановлення MODX, виберіть "Так".';
$_lang['imageExtensions'] = 'imageExtensions';
$_lang['prop_file.imageExtensions_desc'] = 'Список розширень файлів через кому, які є зображеннями. MODX намагатиметься робити попередній перегляд для файлів з цими розширеннями.';
$_lang['skipFiles'] = 'skipFiles';
$_lang['prop_file.skipFiles_desc'] = 'Список через кому. MODX пропускатиме і приховуватиме файли та каталоги, які відповідають цим маскам.';
$_lang['thumbnailQuality'] = 'thumbnailQuality';
$_lang['prop_file.thumbnailQuality_desc'] = 'Якість створюваних зображень попереднього перегляду, в діапазоні 0-100.';
$_lang['thumbnailType'] = 'thumbnailType';
$_lang['prop_file.thumbnailType_desc'] = 'Тип зображення, що використовується для створення попереднього перегляду.';

/* s3 source type */
$_lang['bucket'] = 'Кошик';
$_lang['prop_s3.bucket_desc'] = 'Кошик S3, з якого потрібно завантажувати дані.';
$_lang['prop_s3.key_desc'] = 'Ключ Amazon для автентифікації у кошику.';
$_lang['prop_s3.imageExtensions_desc'] = 'Список розширень файлів через кому, які є зображеннями. MODX намагатиметься робити попередній перегляд для файлів з цими розширеннями.';
$_lang['prop_s3.secret_key_desc'] = 'Секретний ключ Amazon для авторизації у кошику.';
$_lang['prop_s3.skipFiles_desc'] = 'Список через кому. MODX пропускатиме і приховуватиме файли та каталоги, які відповідають цим маскам.';
$_lang['prop_s3.thumbnailQuality_desc'] = 'Якість створюваних зображень попереднього перегляду, в діапазоні 0-100.';
$_lang['prop_s3.thumbnailType_desc'] = 'Тип зображення, що використовується для створення попереднього перегляду.';
$_lang['prop_s3.url_desc'] = 'URL сховища Amazon S3.';
$_lang['s3_no_move_folder'] = 'На даний момент драйвер S3 не підтримує переміщення каталогів.';
$_lang['prop_s3.region_desc'] = 'Region of the bucket. Example: us-west-1';

/* file type */
$_lang['PNG'] = 'PNG';
$_lang['JPG'] = 'JPG';
$_lang['GIF'] = 'GIF';
