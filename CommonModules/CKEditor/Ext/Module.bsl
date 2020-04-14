
Функция ПриСозданииНаСервере(ЭтаФорма) Экспорт
		
	Для Каждого Элемент Из ЭтаФорма.Элементы Цикл   
		Если СтрНачинаетсяС(НРег(Элемент.Имя), НРег("CKEditor")) Тогда
			Если Элемент.Вид = ВидПоляФормы.ПолеHTMLДокумента Тогда
				ЭтаФорма[Элемент.ПутьКДанным] = HTML();
			КонецЕсли;
		КонецЕсли;			
	КонецЦикла;
	
КонецФункции

Функция HTML() Экспорт
	
	Возврат 
		"<!DOCTYPE html>
		|<html>
		|  <head>
		|    <meta charset=""utf-8"">
		|      <title>CKEditor</title>
		|      <script src=""https://cdn.ckeditor.com/4.14.0/standard/ckeditor.js""></script>
		|  </head>
		|  <body>
		|    <textarea name=""editor""></textarea>
		|      <script>
		|        CKEDITOR.replace( 'editor' );
		|
		|        function getData() {
	  	|        	return CKEDITOR.instances.editor.getData();	
		|        }
	    |
		|        function setData(text) {
		|        	CKEDITOR.instances.editor.setData(text);  	
		|        }		
		|		
		|      </script>
		|    </body>
		|</html>";
	
КонецФункции