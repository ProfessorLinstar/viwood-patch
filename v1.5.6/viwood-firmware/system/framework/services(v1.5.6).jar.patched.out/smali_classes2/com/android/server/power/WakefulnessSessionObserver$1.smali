.class public Lcom/android/server/power/WakefulnessSessionObserver$1;
.super Landroid/database/ContentObserver;
.source "WakefulnessSessionObserver.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/WakefulnessSessionObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/power/WakefulnessSessionObserver;Landroid/os/Handler;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/android/server/power/WakefulnessSessionObserver$1;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/android/server/power/WakefulnessSessionObserver$1;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    invoke-static {p0}, Lcom/android/server/power/WakefulnessSessionObserver;->-$$Nest$fgetmContext(Lcom/android/server/power/WakefulnessSessionObserver;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/power/WakefulnessSessionObserver;->updateSettingScreenOffTimeout(Landroid/content/Context;)V

    return-void
.end method
