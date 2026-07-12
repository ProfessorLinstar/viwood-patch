.class public Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$1;
.super Landroid/content/BroadcastReceiver;
.source "NotifyingTimeZoneChangeListener.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;


# direct methods
.method public constructor <init>(Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$1;->this$0:Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 142
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    const-string v0, "com.android.server.timezonedetector.TimeZoneNotificationDeleted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 151
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unknown intent action received: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TimeZoneChangeTracker"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 144
    :cond_0
    const-string/jumbo p1, "user_id"

    const/16 v0, -0x2710

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 146
    const-string v0, "change_id"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 148
    iget-object p0, p0, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener$1;->this$0:Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;

    invoke-static {p0, p1, p2}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->-$$Nest$mnotificationSwipedAway(Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;II)V

    return-void
.end method
