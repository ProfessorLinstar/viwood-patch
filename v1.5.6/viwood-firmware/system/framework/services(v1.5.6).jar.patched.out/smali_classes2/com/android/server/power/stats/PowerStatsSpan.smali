.class public Lcom/android/server/power/stats/PowerStatsSpan;
.super Ljava/lang/Object;
.source "PowerStatsSpan.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final DATE_FORMAT:Ljava/time/format/DateTimeFormatter;


# instance fields
.field public final mMetadata:Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

.field public final mSections:Ljava/util/List;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetDATE_FORMAT()Ljava/time/format/DateTimeFormatter;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/power/stats/PowerStatsSpan;->DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smisCompatibleXmlFormat(I)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/power/stats/PowerStatsSpan;->isCompatibleXmlFormat(I)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 74
    const-string v0, "MM-dd HH:mm:ss.SSS"

    .line 75
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatter;->withZone(Ljava/time/ZoneId;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/stats/PowerStatsSpan;->DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 355
    new-instance v0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    invoke-direct {v0, p1, p2}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/android/server/power/stats/PowerStatsSpan;-><init>(Lcom/android/server/power/stats/PowerStatsSpan$Metadata;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/stats/PowerStatsSpan$Metadata;)V
    .locals 1

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsSpan;->mSections:Ljava/util/List;

    .line 359
    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsSpan;->mMetadata:Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    return-void
.end method

.method public static isCompatibleXmlFormat(I)Z
    .locals 1

    .line 0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static varargs read(Ljava/io/InputStream;Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/Map;[Ljava/lang/String;)Lcom/android/server/power/stats/PowerStatsSpan;
    .locals 9

    .line 416
    invoke-static {p3}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object p3

    .line 417
    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    .line 418
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 420
    invoke-static {p1}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->read(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    .line 425
    :cond_0
    new-instance v2, Lcom/android/server/power/stats/PowerStatsSpan;

    invoke-direct {v2, p0}, Lcom/android/server/power/stats/PowerStatsSpan;-><init>(Lcom/android/server/power/stats/PowerStatsSpan$Metadata;)V

    .line 428
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result p0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-eq p0, v6, :cond_a

    const/4 v7, 0x2

    .line 430
    const-string/jumbo v8, "section"

    if-eqz v4, :cond_2

    const/4 v6, 0x3

    if-ne p0, v6, :cond_1

    .line 432
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v5, v5, -0x1

    if-nez v5, :cond_9

    move v4, v3

    goto/16 :goto_4

    :cond_1
    if-ne p0, v7, :cond_9

    .line 438
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_2
    if-ne p0, v7, :cond_9

    .line 442
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    .line 443
    invoke-virtual {p0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 444
    const-string/jumbo p0, "type"

    invoke-interface {p1, v1, p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez v0, :cond_4

    .line 445
    invoke-interface {p3, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_1

    :cond_3
    move v4, v6

    goto :goto_4

    .line 447
    :cond_4
    :goto_1
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/stats/PowerStatsSpan$SectionReader;

    if-eqz v6, :cond_5

    .line 449
    invoke-interface {v6, p0, p1}, Lcom/android/server/power/stats/PowerStatsSpan$SectionReader;->read(Ljava/lang/String;Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/power/stats/PowerStatsSpan$Section;

    move-result-object v6

    goto :goto_2

    :cond_5
    move-object v6, v1

    :goto_2
    if-nez v6, :cond_7

    if-eqz v0, :cond_6

    .line 456
    new-instance v6, Lcom/android/server/power/stats/PowerStatsSpan$1;

    invoke-direct {v6, p0, p0}, Lcom/android/server/power/stats/PowerStatsSpan$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 453
    :cond_6
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported PowerStatsStore section type: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 469
    :cond_7
    :goto_3
    invoke-virtual {v2, v6}, Lcom/android/server/power/stats/PowerStatsSpan;->addSection(Lcom/android/server/power/stats/PowerStatsSpan$Section;)V

    goto :goto_4

    .line 473
    :cond_8
    const-string/jumbo v6, "metadata"

    invoke-virtual {p0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 474
    invoke-static {p1}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->read(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    .line 477
    :cond_9
    :goto_4
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result p0

    goto/16 :goto_0

    :cond_a
    return-object v2
.end method


# virtual methods
.method public addSection(Lcom/android/server/power/stats/PowerStatsSpan$Section;)V
    .locals 2

    .line 382
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsSpan;->mMetadata:Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    invoke-virtual {p1}, Lcom/android/server/power/stats/PowerStatsSpan$Section;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->addSection(Ljava/lang/String;)V

    .line 383
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsSpan;->mSections:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTimeFrame(JJJ)V
    .locals 7

    .line 375
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsSpan;->mMetadata:Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    invoke-static {p0}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->-$$Nest$fgetmTimeFrames(Lcom/android/server/power/stats/PowerStatsSpan$Metadata;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;-><init>(JJJ)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public close()V
    .locals 2

    const/4 v0, 0x0

    .line 496
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsSpan;->mSections:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 497
    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsSpan;->mSections:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/PowerStatsSpan$Section;

    invoke-virtual {v1}, Lcom/android/server/power/stats/PowerStatsSpan$Section;->close()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 2

    .line 486
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsSpan;->mMetadata:Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->dump(Landroid/util/IndentingPrintWriter;Z)V

    .line 487
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsSpan;->mSections:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/stats/PowerStatsSpan$Section;

    .line 488
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 489
    invoke-static {v0}, Lcom/android/server/power/stats/PowerStatsSpan$Section;->-$$Nest$fgetmType(Lcom/android/server/power/stats/PowerStatsSpan$Section;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 490
    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/PowerStatsSpan$Section;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 491
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getId()J
    .locals 2

    .line 367
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsSpan;->mMetadata:Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    invoke-static {p0}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->-$$Nest$fgetmId(Lcom/android/server/power/stats/PowerStatsSpan$Metadata;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMetadata()Lcom/android/server/power/stats/PowerStatsSpan$Metadata;
    .locals 0

    .line 363
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsSpan;->mMetadata:Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    return-object p0
.end method

.method public getSections()Ljava/util/List;
    .locals 0

    .line 388
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsSpan;->mSections:Ljava/util/List;

    return-object p0
.end method

.method public writeXml(Ljava/io/OutputStream;Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 400
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 401
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v0, 0x0

    invoke-interface {p2, v0, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 402
    iget-object p1, p0, Lcom/android/server/power/stats/PowerStatsSpan;->mMetadata:Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    invoke-virtual {p1, p2}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->write(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 403
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsSpan;->mSections:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/power/stats/PowerStatsSpan$Section;

    .line 404
    const-string/jumbo v1, "section"

    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 405
    const-string/jumbo v2, "type"

    invoke-static {p1}, Lcom/android/server/power/stats/PowerStatsSpan$Section;->-$$Nest$fgetmType(Lcom/android/server/power/stats/PowerStatsSpan$Section;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 406
    invoke-virtual {p1, p2}, Lcom/android/server/power/stats/PowerStatsSpan$Section;->write(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 407
    invoke-interface {p2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 409
    :cond_0
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    return-void
.end method
