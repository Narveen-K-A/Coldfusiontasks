USE tech;

CREATE TABLE loginDtl(username varchar(30), userid varchar(20), Passid varchar(20), role varchar(10));

SELECT * FROM loginDtl;

INSERT INTO loginDtl VALUES('Narveen','Narveen2000','Narveen@2000','user'),
							('Ashna','Ashna1999','Ashna@1999','admin');

CREATE TABLE pagesDtl(pageid varchar(20), pagename varchar(20), pagedescs varchar(500));

SELECT * FROM pagesDtl;

INSERT INTO pagesDtl VALUES('Page101','Pagenumber1','The HyperText Markup Language or HTML is the standard markup language for documents designed to be displayed in a web browser. It can be assisted by technologies such as Cascading Style Sheets (CSS) and scripting languages such as JavaScript.'),
							('Page102','Pagenumber2','Cascading Style Sheets (CSS) is a style sheet language used for describing the presentation of a document written in a markup language such as HTML or XML (including XML dialects such as SVG, MathML or XHTML).[1] CSS is a cornerstone technology of the World Wide Web, alongside HTML and JavaScript.');
