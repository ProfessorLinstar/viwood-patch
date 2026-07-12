.class public Lcom/android/server/utils/EventLogger$StringEvent;
.super Lcom/android/server/utils/EventLogger$Event;
.source "EventLogger.java"


# instance fields
.field public final mDescription:Ljava/lang/String;

.field public final mSource:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 256
    invoke-direct {p0, v0, p1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 259
    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    .line 260
    iput-object p1, p0, Lcom/android/server/utils/EventLogger$StringEvent;->mSource:Ljava/lang/String;

    .line 261
    iput-object p2, p0, Lcom/android/server/utils/EventLogger$StringEvent;->mDescription:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public eventToString()Ljava/lang/String;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/android/server/utils/EventLogger$StringEvent;->mSource:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 267
    iget-object p0, p0, Lcom/android/server/utils/EventLogger$StringEvent;->mDescription:Ljava/lang/String;

    return-object p0

    .line 273
    :cond_0
    iget-object p0, p0, Lcom/android/server/utils/EventLogger$StringEvent;->mDescription:Ljava/lang/String;

    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 271
    const-string v0, "[%-40s] %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
