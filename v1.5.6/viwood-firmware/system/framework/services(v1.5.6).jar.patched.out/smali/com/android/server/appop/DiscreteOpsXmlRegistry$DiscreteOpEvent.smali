.class public final Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;
.super Ljava/lang/Object;
.source "DiscreteOpsXmlRegistry.java"


# instance fields
.field public final mAttributionChainId:I

.field public final mAttributionFlags:I

.field public final mNoteDuration:J

.field public final mNoteTime:J

.field public final mOpFlag:I

.field public final mUidState:I


# direct methods
.method public static bridge synthetic -$$Nest$mdump(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->dump(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mserialize(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->serialize(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(JJIIII)V
    .locals 0

    .line 1318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1319
    iput-wide p1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteTime:J

    .line 1320
    iput-wide p3, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteDuration:J

    .line 1321
    iput p5, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mUidState:I

    .line 1322
    iput p6, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mOpFlag:I

    .line 1323
    iput p7, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionFlags:I

    .line 1324
    iput p8, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionChainId:I

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;)V
    .locals 2

    .line 1336
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1337
    const-string p4, "Access ["

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1338
    iget p4, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mUidState:I

    invoke-static {p4}, Landroid/app/AppOpsManager;->getUidStateName(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1339
    const-string p4, "-"

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1340
    iget p4, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mOpFlag:I

    invoke-static {p4}, Landroid/app/AppOpsManager;->flagsToString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1341
    const-string p4, "] at "

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1342
    iget-wide v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteTime:J

    invoke-virtual {p3, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 1343
    invoke-virtual {p2, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1344
    iget-wide p2, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteDuration:J

    const-wide/16 v0, -0x1

    cmp-long p2, p2, v0

    if-eqz p2, :cond_0

    .line 1345
    const-string p2, " for "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1346
    iget-wide p2, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteDuration:J

    invoke-virtual {p1, p2, p3}, Ljava/io/PrintWriter;->print(J)V

    .line 1347
    const-string p2, " milliseconds "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1349
    :cond_0
    iget p2, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionFlags:I

    if-eqz p2, :cond_1

    .line 1350
    const-string p2, " attribution flags="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1351
    iget p2, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionFlags:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 1352
    const-string p2, " with chainId="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1353
    iget p0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionChainId:I

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(I)V

    .line 1355
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public equalsExceptDuration(Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;)Z
    .locals 4

    .line 1328
    iget-wide v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteTime:J

    iget-wide v2, p1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mUidState:I

    iget v1, p1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mUidState:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mOpFlag:I

    iget v1, p1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mOpFlag:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionFlags:I

    iget v1, p1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionFlags:I

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionChainId:I

    iget p1, p1, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionChainId:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final serialize(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;)V
    .locals 6

    .line 1359
    const-string/jumbo v0, "nt"

    iget-wide v1, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteTime:J

    const/4 v3, 0x0

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 1360
    iget-wide v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mNoteDuration:J

    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    .line 1361
    const-string/jumbo v2, "nd"

    invoke-interface {p1, v3, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 1363
    :cond_0
    iget v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionFlags:I

    if-eqz v0, :cond_1

    .line 1364
    const-string v1, "af"

    invoke-interface {p1, v3, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1366
    :cond_1
    iget v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mAttributionChainId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 1367
    const-string v1, "ci"

    invoke-interface {p1, v3, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1369
    :cond_2
    const-string v0, "default:0"

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1370
    const-string v0, "di"

    invoke-interface {p1, v3, v0, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1372
    :cond_3
    const-string/jumbo p2, "us"

    iget v0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mUidState:I

    invoke-interface {p1, v3, p2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1373
    const-string p2, "f"

    iget p0, p0, Lcom/android/server/appop/DiscreteOpsXmlRegistry$DiscreteOpEvent;->mOpFlag:I

    invoke-interface {p1, v3, p2, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
