.class public Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;
.super Lcom/android/server/people/data/AbstractProtoDiskReadWriter;
.source "EventHistoryImpl.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "EventHistoryImpl$EventsProtoDiskReadWriter"


# direct methods
.method public static synthetic $r8$lambda$3ofo6a7WNbKcUX64XOJ9k1-xak4(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/people/data/EventList;
    .locals 4

    .line 256
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 258
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 259
    invoke-virtual {p0}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide v1, 0x20b00000001L

    .line 262
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v1

    .line 263
    invoke-static {p0}, Lcom/android/server/people/data/Event;->readFromProto(Landroid/util/proto/ProtoInputStream;)Lcom/android/server/people/data/Event;

    move-result-object v3

    .line 264
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 265
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 268
    sget-object v1, Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter;->TAG:Ljava/lang/String;

    const-string v2, "Failed to read protobuf input stream."

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 270
    :cond_1
    new-instance p0, Lcom/android/server/people/data/EventList;

    invoke-direct {p0}, Lcom/android/server/people/data/EventList;-><init>()V

    .line 271
    invoke-virtual {p0, v0}, Lcom/android/server/people/data/EventList;->addAll(Ljava/util/List;)V

    return-object p0
.end method

.method public static synthetic $r8$lambda$ad-xyMVgVsHZUYJ07pG90jJy5Bs(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/people/data/EventList;)V
    .locals 3

    .line 245
    invoke-virtual {p1}, Lcom/android/server/people/data/EventList;->getAllEvents()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/people/data/Event;

    const-wide v1, 0x20b00000001L

    .line 246
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 247
    invoke-virtual {v0, p0}, Lcom/android/server/people/data/Event;->writeToProto(Landroid/util/proto/ProtoOutputStream;)V

    .line 248
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    .line 238
    invoke-direct {p0, p1, p2}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;-><init>(Ljava/io/File;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 239
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    return-void
.end method


# virtual methods
.method public deleteRecentEventsFile()V
    .locals 1

    .line 297
    const-string/jumbo v0, "recent"

    invoke-virtual {p0, v0}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->delete(Ljava/lang/String;)V

    return-void
.end method

.method public loadRecentEventsFromDisk()Lcom/android/server/people/data/EventList;
    .locals 1

    .line 292
    const-string/jumbo v0, "recent"

    invoke-virtual {p0, v0}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->read(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/people/data/EventList;

    return-object p0
.end method

.method public protoStreamReader()Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamReader;
    .locals 0

    .line 255
    new-instance p0, Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter$$ExternalSyntheticLambda1;-><init>()V

    return-object p0
.end method

.method public protoStreamWriter()Lcom/android/server/people/data/AbstractProtoDiskReadWriter$ProtoStreamWriter;
    .locals 0

    .line 244
    new-instance p0, Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/android/server/people/data/EventHistoryImpl$EventsProtoDiskReadWriter$$ExternalSyntheticLambda0;-><init>()V

    return-object p0
.end method

.method public saveEventsImmediately(Lcom/android/server/people/data/EventList;)V
    .locals 1

    .line 283
    const-string/jumbo v0, "recent"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->saveImmediately(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public scheduleEventsSave(Lcom/android/server/people/data/EventList;)V
    .locals 1

    .line 278
    const-string/jumbo v0, "recent"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/people/data/AbstractProtoDiskReadWriter;->scheduleSave(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
