.class public Lcom/android/server/people/data/EventHistoryImpl$EventIndexesProtoDiskReadWriter;
.super Lcom/android/server/people/data/AbstractProtoDiskReadWriter;
.source "EventHistoryImpl.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "EventHistoryImpl$EventIndexesProtoDiskReadWriter"


# direct methods
.method public static synthetic $r8$lambda$FxIQcEIXaWsRtkNjw4hiXGO_AYA(Landroid/util/proto/ProtoOutputStream;Landroid/util/SparseArray;)V
    .locals 7

    const/4 v0, 0x0

    .line 318
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 319
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 320
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/people/data/EventIndex;

    const-wide v3, 0x20b00000001L

    .line 321
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    const-wide v5, 0x10500000001L

    .line 322
    invoke-virtual {p0, v5, v6, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v5, 0x10b00000002L

    .line 323
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 324
    invoke-virtual {v2, p0}, Lcom/android/server/people/data/EventIndex;->writeToProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 325
    invoke-virtual {p0, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 326
    invoke-virtual {p0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$L6Dwp6Ys_3xuchRMGT2oqlN9TNs(Landroid/util/proto/ProtoInputStream;)Landroid/util/SparseArray;
    .locals 10

    .line 334
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 336
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 337
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-wide v4, 0x20b00000001L

    .line 341
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v4

    .line 343
    sget-object v1, Lcom/android/server/people/data/EventIndex;->EMPTY:Lcom/android/server/people/data/EventIndex;

    const/4 v6, 0x0

    .line 344
    :goto_1
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v7

    if-eq v7, v2, :cond_3

    .line 345
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v7

    if-eq v7, v3, :cond_2

    const/4 v8, 0x2

    if-eq v7, v8, :cond_1

    .line 357
    sget-object v7, Lcom/android/server/people/data/EventHistoryImpl$EventIndexesProtoDiskReadWriter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not read undefined field: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 357
    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    const-wide v7, 0x10b00000002L

    .line 351
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v7

    .line 353
    invoke-static {p0}, Lcom/android/server/people/data/EventIndex;->readFromProto(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/people/data/EventIndex;

    move-result-object v1

    .line 354
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoInputStream;->end(J)V

    goto :goto_1

    :cond_2
    const-wide v6, 0x10500000001L

    .line 347
    invoke-virtual {p0, v6, v7}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v6

    goto :goto_1

    .line 361
    :cond_3
    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 362
    invoke-virtual {p0, v4, v5}, Landroid/util/proto/ProtoInputStream;->end(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 365
    :goto_2
    sget-object v1, Lcom/android/server/people/data/EventHistoryImpl$EventIndexesProtoDiskReadWriter;->TAG:Ljava/lang/String;

    const-string v2, "Failed to read protobuf input stream."

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    .line 311
    invoke-direct {p0, p1, p2}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;-><init>(Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 312
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    return-void
.end method


# virtual methods
.method public deleteIndexesFile()V
    .locals 1

    .line 389
    const-string v0, "index"

    invoke-virtual {p0, v0}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->delete(Ljava/lang/String;)V

    return-void
.end method

.method public loadIndexesFromDisk()Landroid/util/SparseArray;
    .locals 1

    .line 384
    const-string v0, "index"

    invoke-virtual {p0, v0}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->read(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    return-object p0
.end method

.method public protoStreamReader()Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamReader;
    .locals 0

    .line 333
    new-instance p0, Lcom/android/server/people/data/EventHistoryImpl$EventIndexesProtoDiskReadWriter$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Lcom/android/server/people/data/EventHistoryImpl$EventIndexesProtoDiskReadWriter$$ExternalSyntheticLambda1;-><init>()V

    return-object p0
.end method

.method public protoStreamWriter()Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamWriter;
    .locals 0

    .line 317
    new-instance p0, Lcom/android/server/people/data/EventHistoryImpl$EventIndexesProtoDiskReadWriter$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/android/server/people/data/EventHistoryImpl$EventIndexesProtoDiskReadWriter$$ExternalSyntheticLambda0;-><init>()V

    return-object p0
.end method

.method public saveIndexesImmediately(Landroid/util/SparseArray;)V
    .locals 1

    .line 378
    const-string v0, "index"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->saveImmediately(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public scheduleIndexesSave(Landroid/util/SparseArray;)V
    .locals 1

    .line 373
    const-string v0, "index"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->scheduleSave(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
