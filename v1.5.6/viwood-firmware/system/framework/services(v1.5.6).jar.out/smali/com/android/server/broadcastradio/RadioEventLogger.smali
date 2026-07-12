.class public final Lcom/android/server/broadcastradio/RadioEventLogger;
.super Ljava/lang/Object;
.source "RadioEventLogger.java"


# instance fields
.field public final mDebug:Z

.field public final mEventLogger:Landroid/util/LocalLog;

.field public final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/server/broadcastradio/RadioEventLogger;->mTag:Ljava/lang/String;

    const/4 v0, 0x3

    .line 37
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/broadcastradio/RadioEventLogger;->mDebug:Z

    .line 38
    new-instance p1, Landroid/util/LocalLog;

    invoke-direct {p1, p2}, Landroid/util/LocalLog;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/broadcastradio/RadioEventLogger;->mEventLogger:Landroid/util/LocalLog;

    return-void
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/server/broadcastradio/RadioEventLogger;->mEventLogger:Landroid/util/LocalLog;

    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public varargs logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 47
    invoke-static {p1, p2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/android/server/broadcastradio/RadioEventLogger;->mEventLogger:Landroid/util/LocalLog;

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 49
    iget-boolean v0, p0, Lcom/android/server/broadcastradio/RadioEventLogger;->mDebug:Z

    if-eqz v0, :cond_0

    .line 50
    iget-object p0, p0, Lcom/android/server/broadcastradio/RadioEventLogger;->mTag:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
