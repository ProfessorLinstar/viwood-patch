.class public Lcom/android/server/notification/NotificationBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;
.source "NotificationBackupHelper.java"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mNm:Lcom/android/server/notification/NotificationManagerInternal;

.field public final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    const-string v0, "NotifBackupHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/NotificationBackupHelper;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 41
    const-string/jumbo v0, "notifications"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    .line 42
    iput p1, p0, Lcom/android/server/notification/NotificationBackupHelper;->mUserId:I

    .line 44
    const-class p1, Lcom/android/server/notification/NotificationManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/notification/NotificationManagerInternal;

    iput-object p1, p0, Lcom/android/server/notification/NotificationBackupHelper;->mNm:Lcom/android/server/notification/NotificationManagerInternal;

    return-void
.end method


# virtual methods
.method public applyRestoredPayload(Ljava/lang/String;[B)V
    .locals 3

    .line 70
    sget-boolean v0, Lcom/android/server/notification/NotificationBackupHelper;->DEBUG:Z

    const-string v1, "NotifBackupHelper"

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got restore of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    const-string/jumbo v0, "notifications"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 79
    :try_start_0
    const-string/jumbo p1, "notification"

    .line 80
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 79
    invoke-static {p1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object p1

    .line 81
    iget p0, p0, Lcom/android/server/notification/NotificationBackupHelper;->mUserId:I

    invoke-interface {p1, p2, p0}, Landroid/app/INotificationManager;->applyRestore([BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 84
    const-string p1, "Couldn\'t communicate with notification manager"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public getBackupPayload(Ljava/lang/String;)[B
    .locals 2

    .line 50
    const-string/jumbo v0, "notifications"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 55
    :try_start_0
    const-string/jumbo p1, "notification"

    .line 56
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 55
    invoke-static {p1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object p1

    .line 57
    iget p0, p0, Lcom/android/server/notification/NotificationBackupHelper;->mUserId:I

    invoke-interface {p1, p0}, Landroid/app/INotificationManager;->getBackupPayload(I)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 61
    const-string p1, "NotifBackupHelper"

    const-string v1, "Couldn\'t communicate with notification manager"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object v0
.end method
