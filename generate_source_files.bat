::
:: Copyright (C) 2020-2024 Embedded AMS B.V. - All Rights Reserved
::
:: This file is part of Embedded Proto.
::
:: Embedded Proto is open source software: you can redistribute it and/or 
:: modify it under the terms of the GNU General Public License as published 
:: by the Free Software Foundation, version 3 of the license.
::
:: Embedded Proto  is distributed in the hope that it will be useful,
:: but WITHOUT ANY WARRANTY; without even the implied warranty of
:: MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
:: GNU General Public License for more details.
::
:: You should have received a copy of the GNU General Public License
:: along with Embedded Proto. If not, see <https://www.gnu.org/licenses/>.
::
:: For commercial and closed source application please visit:
:: <https://EmbeddedProto.com/license/>.
::
:: Embedded AMS B.V.
:: Info:
::   info at EmbeddedProto dot com
::
:: Postal address:
::   Atoomweg 2
::   1627 LE, Hoorn
::   the Netherlands
::

:: Generate the embedded source code.
@rem mkdir .\nucleo-f446re\generated

@cd EmbeddedProto
protoc --plugin=protoc-gen-eams=protoc-gen-eams.bat -I..\proto -I.\generator -IC:\Users\decarlif\Desktop\protoc-25.1-win64\include --eams_out=..\nucleo-f446re\generated ..\proto\ble_messages.proto
@cd ..

@rem :: Generate the desktop source code.
@rem mkdir .\desktop\generated
@rem protoc -I.\proto --python_out=.\desktop\generated .\proto\ble_messages.proto
