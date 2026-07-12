.class public abstract Lcom/android/server/notification/toast/ToastRecord;
.super Ljava/lang/Object;
.source "ToastRecord.java"


# instance fields
.field public final displayId:I

.field public final isSystemToast:Z

.field public mDuration:I

.field public final mNotificationManager:Lcom/android/server/notification/NotificationManagerService;

.field public final pid:I

.field public final pkg:Ljava/lang/String;

.field public final token:Landroid/os/IBinder;

.field public final uid:I

.field public final windowToken:Landroid/os/Binder;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;IILjava/lang/String;ZLandroid/os/IBinder;ILandroid/os/Binder;I)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/server/notification/toast/ToastRecord;->mNotificationManager:Lcom/android/server/notification/NotificationManagerService;

    .line 45
    iput p2, p0, Lcom/android/server/notification/toast/ToastRecord;->uid:I

    .line 46
    iput p3, p0, Lcom/android/server/notification/toast/ToastRecord;->pid:I

    .line 47
    iput-object p4, p0, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    .line 48
    iput-boolean p5, p0, Lcom/android/server/notification/toast/ToastRecord;->isSystemToast:Z

    .line 49
    iput-object p6, p0, Lcom/android/server/notification/toast/ToastRecord;->token:Landroid/os/IBinder;

    .line 50
    iput-object p8, p0, Lcom/android/server/notification/toast/ToastRecord;->windowToken:Landroid/os/Binder;

    .line 51
    iput p9, p0, Lcom/android/server/notification/toast/ToastRecord;->displayId:I

    .line 52
    iput p7, p0, Lcom/android/server/notification/toast/ToastRecord;->mDuration:I

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 1

    if-eqz p3, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 89
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getDuration()I
    .locals 0

    .line 72
    iget p0, p0, Lcom/android/server/notification/toast/ToastRecord;->mDuration:I

    return p0
.end method

.method public abstract hide()V
.end method

.method public abstract isAppRendered()Z
.end method

.method public keepProcessAlive()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public abstract show()Z
.end method

.method public update(I)V
    .locals 0

    .line 79
    iput p1, p0, Lcom/android/server/notification/toast/ToastRecord;->mDuration:I

    return-void
.end method
