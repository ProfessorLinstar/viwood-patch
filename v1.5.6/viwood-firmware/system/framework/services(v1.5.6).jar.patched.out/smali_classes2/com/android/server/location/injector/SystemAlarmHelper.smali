.class public Lcom/android/server/location/injector/SystemAlarmHelper;
.super Lcom/android/server/location/injector/AlarmHelper;
.source "SystemAlarmHelper.java"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/server/location/injector/AlarmHelper;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/server/location/injector/SystemAlarmHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public cancel(Landroid/app/AlarmManager$OnAlarmListener;)V
    .locals 1

    .line 53
    iget-object p0, p0, Lcom/android/server/location/injector/SystemAlarmHelper;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/AlarmManager;

    .line 54
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    invoke-virtual {p0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    return-void
.end method

.method public setDelayedAlarmInternal(JLandroid/app/AlarmManager$OnAlarmListener;Landroid/os/WorkSource;)V
    .locals 11

    .line 45
    iget-object p0, p0, Lcom/android/server/location/injector/SystemAlarmHelper;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/AlarmManager;

    .line 46
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/app/AlarmManager;

    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long v2, v1, p1

    const-wide/16 v6, 0x0

    .line 48
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v9

    const/4 v1, 0x2

    const-wide/16 v4, 0x0

    move-object v8, p3

    move-object v10, p4

    .line 47
    invoke-virtual/range {v0 .. v10}, Landroid/app/AlarmManager;->set(IJJJLandroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;Landroid/os/WorkSource;)V

    return-void
.end method
