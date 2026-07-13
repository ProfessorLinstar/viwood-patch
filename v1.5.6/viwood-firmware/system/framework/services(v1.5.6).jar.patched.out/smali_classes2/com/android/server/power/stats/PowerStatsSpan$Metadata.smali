.class public Lcom/android/server/power/stats/PowerStatsSpan$Metadata;
.super Ljava/lang/Object;
.source "PowerStatsSpan.java"


# static fields
.field public static final COMPARATOR:Ljava/util/Comparator;


# instance fields
.field public final mId:J

.field public final mSections:Ljava/util/List;

.field public final mTimeFrames:Ljava/util/List;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmId(Lcom/android/server/power/stats/PowerStatsSpan$Metadata;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mId:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmTimeFrames(Lcom/android/server/power/stats/PowerStatsSpan$Metadata;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mTimeFrames:Ljava/util/List;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 125
    new-instance v0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mTimeFrames:Ljava/util/List;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mSections:Ljava/util/List;

    .line 132
    iput-wide p1, p0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mId:J

    return-void
.end method

.method public static read(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/power/stats/PowerStatsSpan$Metadata;
    .locals 5

    .line 215
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    const/4 v3, 0x1

    if-eq v0, v3, :cond_5

    const/4 v3, 0x3

    .line 216
    const-string/jumbo v4, "metadata"

    if-ne v0, v3, :cond_0

    .line 218
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 220
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 222
    const-string/jumbo v0, "version"

    invoke-interface {p0, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 223
    invoke-static {v0}, Lcom/android/server/power/stats/PowerStatsSpan;->-$$Nest$smisCompatibleXmlFormat(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 224
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incompatible version "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; expected "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PowerStatsStore"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 229
    :cond_1
    const-string v0, "id"

    invoke-interface {p0, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    .line 230
    new-instance v0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    invoke-direct {v0, v2, v3}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;-><init>(J)V

    move-object v2, v0

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    .line 231
    const-string/jumbo v3, "timeframe"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 232
    invoke-static {p0}, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;->read(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->addTimeFrame(Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;)V

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    .line 233
    const-string/jumbo v3, "section"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 234
    const-string/jumbo v0, "type"

    invoke-interface {p0, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->addSection(Ljava/lang/String;)V

    .line 237
    :cond_4
    :goto_1
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v0

    goto/16 :goto_0

    :cond_5
    return-object v2
.end method


# virtual methods
.method public addSection(Ljava/lang/String;)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mSections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mSections:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addTimeFrame(Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;)V
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mTimeFrames:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 1

    const/4 v0, 0x1

    .line 246
    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->dump(Landroid/util/IndentingPrintWriter;Z)V

    return-void
.end method

.method public dump(Landroid/util/IndentingPrintWriter;Z)V
    .locals 3

    .line 250
    const-string v0, "Span "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mTimeFrames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mTimeFrames:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 253
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_0
    const/4 v0, 0x1

    .line 258
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mTimeFrames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 259
    iget-object v1, p0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mTimeFrames:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;

    .line 260
    const-string v2, "     "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v1, p1}, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 262
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    .line 266
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 267
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mSections:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 268
    const-string/jumbo v0, "section"

    invoke-virtual {p1, v0, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 269
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    goto :goto_1

    .line 271
    :cond_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_3
    return-void
.end method

.method public getEndMonotonicTime()J
    .locals 10

    const-wide/high16 v0, -0x8000000000000000L

    const/4 v2, 0x0

    move-wide v3, v0

    .line 175
    :goto_0
    iget-object v5, p0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mTimeFrames:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 176
    iget-object v5, p0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mTimeFrames:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;

    .line 177
    iget-wide v6, v5, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;->startMonotonicTime:J

    iget-wide v8, v5, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;->duration:J

    add-long/2addr v6, v8

    cmp-long v5, v6, v3

    if-lez v5, :cond_0

    move-wide v3, v6

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    cmp-long p0, v3, v0

    if-eqz p0, :cond_2

    return-wide v3

    :cond_2
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .line 136
    iget-wide v0, p0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mId:J

    return-wide v0
.end method

.method public getSections()Ljava/util/List;
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mSections:Ljava/util/List;

    return-object p0
.end method

.method public getStartMonotonicTime()J
    .locals 8

    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, 0x0

    move-wide v3, v0

    .line 164
    :goto_0
    iget-object v5, p0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mTimeFrames:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 165
    iget-object v5, p0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mTimeFrames:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;

    .line 166
    iget-wide v5, v5, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;->startMonotonicTime:J

    cmp-long v7, v5, v3

    if-gez v7, :cond_0

    move-wide v3, v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    cmp-long p0, v3, v0

    if-eqz p0, :cond_2

    return-wide v3

    :cond_2
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getStartTime()J
    .locals 8

    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, 0x0

    move-wide v3, v0

    .line 153
    :goto_0
    iget-object v5, p0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mTimeFrames:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 154
    iget-object v5, p0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mTimeFrames:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;

    .line 155
    iget-wide v5, v5, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;->startTime:J

    cmp-long v7, v5, v3

    if-gez v7, :cond_0

    move-wide v3, v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    cmp-long p0, v3, v0

    if-eqz p0, :cond_2

    return-wide v3

    :cond_2
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTimeFrames()Ljava/util/List;
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mTimeFrames:Ljava/util/List;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 277
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 278
    new-instance v1, Landroid/util/IndentingPrintWriter;

    invoke-direct {v1, v0}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 279
    iget-wide v2, p0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v1, v3, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    const/4 v2, 0x0

    .line 280
    :goto_0
    iget-object v3, p0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mTimeFrames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 281
    iget-object v3, p0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mTimeFrames:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;

    .line 282
    const-string/jumbo v4, "timeframe=["

    invoke-virtual {v1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v3, v1}, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 284
    const-string v3, "] "

    invoke-virtual {v1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 286
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mSections:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 287
    const-string/jumbo v3, "section"

    invoke-virtual {v1, v3, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    goto :goto_1

    .line 289
    :cond_1
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->flush()V

    .line 290
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public write(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 5

    const/4 v0, 0x0

    .line 193
    const-string/jumbo v1, "metadata"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 194
    const-string v2, "id"

    iget-wide v3, p0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mId:J

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 195
    const-string/jumbo v2, "version"

    const/4 v3, 0x2

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 196
    iget-object v2, p0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mTimeFrames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;

    .line 197
    invoke-virtual {v3, p1}, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;->write(Lcom/android/modules/utils/TypedXmlSerializer;)V

    goto :goto_0

    .line 199
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->mSections:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 200
    const-string/jumbo v3, "section"

    invoke-interface {p1, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 201
    const-string/jumbo v4, "type"

    invoke-interface {p1, v0, v4, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 202
    invoke-interface {p1, v0, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 204
    :cond_1
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
