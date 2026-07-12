.class public abstract Lcom/android/server/policy/EventLogTags;
.super Ljava/lang/Object;
.source "EventLogTags.java"


# direct methods
.method public static writeInterceptPower(Ljava/lang/String;II)V
    .locals 0

    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x11171

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public static writeScreenToggled(I)V
    .locals 1

    const v0, 0x11170

    .line 20
    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    return-void
.end method
