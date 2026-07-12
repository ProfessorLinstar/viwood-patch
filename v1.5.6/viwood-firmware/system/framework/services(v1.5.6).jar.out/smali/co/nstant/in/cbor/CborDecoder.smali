.class public Lco/nstant/in/cbor/CborDecoder;
.super Ljava/lang/Object;
.source "CborDecoder.java"


# instance fields
.field public final arrayDecoder:Lco/nstant/in/cbor/decoder/ArrayDecoder;

.field public autoDecodeInfinitiveArrays:Z

.field public autoDecodeInfinitiveByteStrings:Z

.field public autoDecodeInfinitiveMaps:Z

.field public autoDecodeInfinitiveUnicodeStrings:Z

.field public autoDecodeLanguageTaggedStrings:Z

.field public autoDecodeRationalNumbers:Z

.field public final byteStringDecoder:Lco/nstant/in/cbor/decoder/ByteStringDecoder;

.field public final inputStream:Ljava/io/InputStream;

.field public final mapDecoder:Lco/nstant/in/cbor/decoder/MapDecoder;

.field public final negativeIntegerDecoder:Lco/nstant/in/cbor/decoder/NegativeIntegerDecoder;

.field public rejectDuplicateKeys:Z

.field public final specialDecoder:Lco/nstant/in/cbor/decoder/SpecialDecoder;

.field public final tagDecoder:Lco/nstant/in/cbor/decoder/TagDecoder;

.field public final unicodeStringDecoder:Lco/nstant/in/cbor/decoder/UnicodeStringDecoder;

.field public final unsignedIntegerDecoder:Lco/nstant/in/cbor/decoder/UnsignedIntegerDecoder;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lco/nstant/in/cbor/CborDecoder;->autoDecodeInfinitiveArrays:Z

    .line 43
    iput-boolean v0, p0, Lco/nstant/in/cbor/CborDecoder;->autoDecodeInfinitiveMaps:Z

    .line 44
    iput-boolean v0, p0, Lco/nstant/in/cbor/CborDecoder;->autoDecodeInfinitiveByteStrings:Z

    .line 45
    iput-boolean v0, p0, Lco/nstant/in/cbor/CborDecoder;->autoDecodeInfinitiveUnicodeStrings:Z

    .line 46
    iput-boolean v0, p0, Lco/nstant/in/cbor/CborDecoder;->autoDecodeRationalNumbers:Z

    .line 47
    iput-boolean v0, p0, Lco/nstant/in/cbor/CborDecoder;->autoDecodeLanguageTaggedStrings:Z

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lco/nstant/in/cbor/CborDecoder;->rejectDuplicateKeys:Z

    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    iput-object p1, p0, Lco/nstant/in/cbor/CborDecoder;->inputStream:Ljava/io/InputStream;

    .line 57
    new-instance v0, Lco/nstant/in/cbor/decoder/UnsignedIntegerDecoder;

    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/decoder/UnsignedIntegerDecoder;-><init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V

    iput-object v0, p0, Lco/nstant/in/cbor/CborDecoder;->unsignedIntegerDecoder:Lco/nstant/in/cbor/decoder/UnsignedIntegerDecoder;

    .line 58
    new-instance v0, Lco/nstant/in/cbor/decoder/NegativeIntegerDecoder;

    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/decoder/NegativeIntegerDecoder;-><init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V

    iput-object v0, p0, Lco/nstant/in/cbor/CborDecoder;->negativeIntegerDecoder:Lco/nstant/in/cbor/decoder/NegativeIntegerDecoder;

    .line 59
    new-instance v0, Lco/nstant/in/cbor/decoder/ByteStringDecoder;

    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/decoder/ByteStringDecoder;-><init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V

    iput-object v0, p0, Lco/nstant/in/cbor/CborDecoder;->byteStringDecoder:Lco/nstant/in/cbor/decoder/ByteStringDecoder;

    .line 60
    new-instance v0, Lco/nstant/in/cbor/decoder/UnicodeStringDecoder;

    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/decoder/UnicodeStringDecoder;-><init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V

    iput-object v0, p0, Lco/nstant/in/cbor/CborDecoder;->unicodeStringDecoder:Lco/nstant/in/cbor/decoder/UnicodeStringDecoder;

    .line 61
    new-instance v0, Lco/nstant/in/cbor/decoder/ArrayDecoder;

    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/decoder/ArrayDecoder;-><init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V

    iput-object v0, p0, Lco/nstant/in/cbor/CborDecoder;->arrayDecoder:Lco/nstant/in/cbor/decoder/ArrayDecoder;

    .line 62
    new-instance v0, Lco/nstant/in/cbor/decoder/MapDecoder;

    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/decoder/MapDecoder;-><init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V

    iput-object v0, p0, Lco/nstant/in/cbor/CborDecoder;->mapDecoder:Lco/nstant/in/cbor/decoder/MapDecoder;

    .line 63
    new-instance v0, Lco/nstant/in/cbor/decoder/TagDecoder;

    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/decoder/TagDecoder;-><init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V

    iput-object v0, p0, Lco/nstant/in/cbor/CborDecoder;->tagDecoder:Lco/nstant/in/cbor/decoder/TagDecoder;

    .line 64
    new-instance v0, Lco/nstant/in/cbor/decoder/SpecialDecoder;

    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/decoder/SpecialDecoder;-><init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V

    iput-object v0, p0, Lco/nstant/in/cbor/CborDecoder;->specialDecoder:Lco/nstant/in/cbor/decoder/SpecialDecoder;

    return-void
.end method


# virtual methods
.method public final decodeLanguageTaggedString(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/DataItem;
    .locals 1

    .line 171
    instance-of p0, p1, Lco/nstant/in/cbor/model/Array;

    if-eqz p0, :cond_3

    .line 175
    check-cast p1, Lco/nstant/in/cbor/model/Array;

    .line 177
    invoke-virtual {p1}, Lco/nstant/in/cbor/model/Array;->getDataItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 181
    invoke-virtual {p1}, Lco/nstant/in/cbor/model/Array;->getDataItems()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lco/nstant/in/cbor/model/DataItem;

    .line 183
    instance-of v0, p0, Lco/nstant/in/cbor/model/UnicodeString;

    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {p1}, Lco/nstant/in/cbor/model/Array;->getDataItems()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lco/nstant/in/cbor/model/DataItem;

    .line 189
    instance-of v0, p1, Lco/nstant/in/cbor/model/UnicodeString;

    if-eqz v0, :cond_0

    .line 193
    check-cast p0, Lco/nstant/in/cbor/model/UnicodeString;

    .line 194
    check-cast p1, Lco/nstant/in/cbor/model/UnicodeString;

    .line 196
    new-instance v0, Lco/nstant/in/cbor/model/LanguageTaggedString;

    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/model/LanguageTaggedString;-><init>(Lco/nstant/in/cbor/model/UnicodeString;Lco/nstant/in/cbor/model/UnicodeString;)V

    return-object v0

    .line 190
    :cond_0
    new-instance p0, Lco/nstant/in/cbor/CborException;

    const-string p1, "Error decoding LanguageTaggedString: second data item is not an UnicodeString"

    invoke-direct {p0, p1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 184
    :cond_1
    new-instance p0, Lco/nstant/in/cbor/CborException;

    const-string p1, "Error decoding LanguageTaggedString: first data item is not an UnicodeString"

    invoke-direct {p0, p1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 178
    :cond_2
    new-instance p0, Lco/nstant/in/cbor/CborException;

    const-string p1, "Error decoding LanguageTaggedString: array size is not 2"

    invoke-direct {p0, p1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 172
    :cond_3
    new-instance p0, Lco/nstant/in/cbor/CborException;

    const-string p1, "Error decoding LanguageTaggedString: not an array"

    invoke-direct {p0, p1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public decodeNext()Lco/nstant/in/cbor/model/DataItem;
    .locals 6

    .line 124
    :try_start_0
    iget-object v0, p0, Lco/nstant/in/cbor/CborDecoder;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 131
    :cond_0
    sget-object v1, Lco/nstant/in/cbor/CborDecoder$1;->$SwitchMap$co$nstant$in$cbor$model$MajorType:[I

    invoke-static {v0}, Lco/nstant/in/cbor/model/MajorType;->ofByte(I)Lco/nstant/in/cbor/model/MajorType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 166
    new-instance p0, Lco/nstant/in/cbor/CborException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not implemented major type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 147
    :pswitch_0
    iget-object v1, p0, Lco/nstant/in/cbor/CborDecoder;->tagDecoder:Lco/nstant/in/cbor/decoder/TagDecoder;

    invoke-virtual {v1, v0}, Lco/nstant/in/cbor/decoder/TagDecoder;->decode(I)Lco/nstant/in/cbor/model/Tag;

    move-result-object v0

    .line 148
    invoke-virtual {p0}, Lco/nstant/in/cbor/CborDecoder;->decodeNext()Lco/nstant/in/cbor/model/DataItem;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 152
    iget-boolean v2, p0, Lco/nstant/in/cbor/CborDecoder;->autoDecodeRationalNumbers:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lco/nstant/in/cbor/model/Tag;->getValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1e

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 153
    invoke-virtual {p0, v1}, Lco/nstant/in/cbor/CborDecoder;->decodeRationalNumber(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p0

    return-object p0

    .line 154
    :cond_1
    iget-boolean v2, p0, Lco/nstant/in/cbor/CborDecoder;->autoDecodeLanguageTaggedStrings:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lco/nstant/in/cbor/model/Tag;->getValue()J

    move-result-wide v2

    const-wide/16 v4, 0x26

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 155
    invoke-virtual {p0, v1}, Lco/nstant/in/cbor/CborDecoder;->decodeLanguageTaggedString(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object p0

    return-object p0

    :cond_2
    move-object p0, v1

    .line 158
    :goto_0
    invoke-virtual {p0}, Lco/nstant/in/cbor/model/DataItem;->hasTag()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 159
    invoke-virtual {p0}, Lco/nstant/in/cbor/model/DataItem;->getTag()Lco/nstant/in/cbor/model/Tag;

    move-result-object p0

    goto :goto_0

    .line 160
    :cond_3
    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/model/DataItem;->setTag(Lco/nstant/in/cbor/model/Tag;)V

    return-object v1

    .line 150
    :cond_4
    new-instance p0, Lco/nstant/in/cbor/CborException;

    const-string v0, "Unexpected end of stream: tag without following data item."

    invoke-direct {p0, v0}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 145
    :pswitch_1
    iget-object p0, p0, Lco/nstant/in/cbor/CborDecoder;->specialDecoder:Lco/nstant/in/cbor/decoder/SpecialDecoder;

    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/decoder/SpecialDecoder;->decode(I)Lco/nstant/in/cbor/model/Special;

    move-result-object p0

    return-object p0

    .line 143
    :pswitch_2
    iget-object p0, p0, Lco/nstant/in/cbor/CborDecoder;->unsignedIntegerDecoder:Lco/nstant/in/cbor/decoder/UnsignedIntegerDecoder;

    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/decoder/UnsignedIntegerDecoder;->decode(I)Lco/nstant/in/cbor/model/UnsignedInteger;

    move-result-object p0

    return-object p0

    .line 141
    :pswitch_3
    iget-object p0, p0, Lco/nstant/in/cbor/CborDecoder;->unicodeStringDecoder:Lco/nstant/in/cbor/decoder/UnicodeStringDecoder;

    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/decoder/UnicodeStringDecoder;->decode(I)Lco/nstant/in/cbor/model/UnicodeString;

    move-result-object p0

    return-object p0

    .line 139
    :pswitch_4
    iget-object p0, p0, Lco/nstant/in/cbor/CborDecoder;->negativeIntegerDecoder:Lco/nstant/in/cbor/decoder/NegativeIntegerDecoder;

    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/decoder/NegativeIntegerDecoder;->decode(I)Lco/nstant/in/cbor/model/NegativeInteger;

    move-result-object p0

    return-object p0

    .line 137
    :pswitch_5
    iget-object p0, p0, Lco/nstant/in/cbor/CborDecoder;->mapDecoder:Lco/nstant/in/cbor/decoder/MapDecoder;

    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/decoder/MapDecoder;->decode(I)Lco/nstant/in/cbor/model/Map;

    move-result-object p0

    return-object p0

    .line 135
    :pswitch_6
    iget-object p0, p0, Lco/nstant/in/cbor/CborDecoder;->byteStringDecoder:Lco/nstant/in/cbor/decoder/ByteStringDecoder;

    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/decoder/ByteStringDecoder;->decode(I)Lco/nstant/in/cbor/model/ByteString;

    move-result-object p0

    return-object p0

    .line 133
    :pswitch_7
    iget-object p0, p0, Lco/nstant/in/cbor/CborDecoder;->arrayDecoder:Lco/nstant/in/cbor/decoder/ArrayDecoder;

    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/decoder/ArrayDecoder;->decode(I)Lco/nstant/in/cbor/model/Array;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 126
    new-instance v0, Lco/nstant/in/cbor/CborException;

    invoke-direct {v0, p0}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final decodeRationalNumber(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/DataItem;
    .locals 1

    .line 200
    instance-of p0, p1, Lco/nstant/in/cbor/model/Array;

    if-eqz p0, :cond_3

    .line 204
    check-cast p1, Lco/nstant/in/cbor/model/Array;

    .line 206
    invoke-virtual {p1}, Lco/nstant/in/cbor/model/Array;->getDataItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 210
    invoke-virtual {p1}, Lco/nstant/in/cbor/model/Array;->getDataItems()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lco/nstant/in/cbor/model/DataItem;

    .line 212
    instance-of v0, p0, Lco/nstant/in/cbor/model/Number;

    if-eqz v0, :cond_1

    .line 216
    invoke-virtual {p1}, Lco/nstant/in/cbor/model/Array;->getDataItems()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lco/nstant/in/cbor/model/DataItem;

    .line 218
    instance-of v0, p1, Lco/nstant/in/cbor/model/Number;

    if-eqz v0, :cond_0

    .line 222
    check-cast p0, Lco/nstant/in/cbor/model/Number;

    .line 223
    check-cast p1, Lco/nstant/in/cbor/model/Number;

    .line 225
    new-instance v0, Lco/nstant/in/cbor/model/RationalNumber;

    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/model/RationalNumber;-><init>(Lco/nstant/in/cbor/model/Number;Lco/nstant/in/cbor/model/Number;)V

    return-object v0

    .line 219
    :cond_0
    new-instance p0, Lco/nstant/in/cbor/CborException;

    const-string p1, "Error decoding RationalNumber: second data item is not a number"

    invoke-direct {p0, p1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 213
    :cond_1
    new-instance p0, Lco/nstant/in/cbor/CborException;

    const-string p1, "Error decoding RationalNumber: first data item is not a number"

    invoke-direct {p0, p1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 207
    :cond_2
    new-instance p0, Lco/nstant/in/cbor/CborException;

    const-string p1, "Error decoding RationalNumber: array size is not 2"

    invoke-direct {p0, p1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 201
    :cond_3
    new-instance p0, Lco/nstant/in/cbor/CborException;

    const-string p1, "Error decoding RationalNumber: not an array"

    invoke-direct {p0, p1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isAutoDecodeInfinitiveArrays()Z
    .locals 0

    .line 229
    iget-boolean p0, p0, Lco/nstant/in/cbor/CborDecoder;->autoDecodeInfinitiveArrays:Z

    return p0
.end method

.method public isAutoDecodeInfinitiveByteStrings()Z
    .locals 0

    .line 245
    iget-boolean p0, p0, Lco/nstant/in/cbor/CborDecoder;->autoDecodeInfinitiveByteStrings:Z

    return p0
.end method

.method public isAutoDecodeInfinitiveMaps()Z
    .locals 0

    .line 237
    iget-boolean p0, p0, Lco/nstant/in/cbor/CborDecoder;->autoDecodeInfinitiveMaps:Z

    return p0
.end method

.method public isAutoDecodeInfinitiveUnicodeStrings()Z
    .locals 0

    .line 254
    iget-boolean p0, p0, Lco/nstant/in/cbor/CborDecoder;->autoDecodeInfinitiveUnicodeStrings:Z

    return p0
.end method

.method public isRejectDuplicateKeys()Z
    .locals 0

    .line 281
    iget-boolean p0, p0, Lco/nstant/in/cbor/CborDecoder;->rejectDuplicateKeys:Z

    return p0
.end method
