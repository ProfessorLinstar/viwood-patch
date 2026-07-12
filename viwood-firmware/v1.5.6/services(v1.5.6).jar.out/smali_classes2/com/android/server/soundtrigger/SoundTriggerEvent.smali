.class public abstract Lcom/android/server/soundtrigger/SoundTriggerEvent;
.super Lcom/android/server/utils/EventLogger$Event;
.source "SoundTriggerEvent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/android/server/utils/EventLogger$Event;-><init>()V

    return-void
.end method


# virtual methods
.method public printLog(ILjava/lang/String;)Lcom/android/server/utils/EventLogger$Event;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/android/server/utils/EventLogger$Event;->eventToString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/utils/EventLogger$Event;->eventToString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/utils/EventLogger$Event;->eventToString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 31
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/utils/EventLogger$Event;->eventToString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method
