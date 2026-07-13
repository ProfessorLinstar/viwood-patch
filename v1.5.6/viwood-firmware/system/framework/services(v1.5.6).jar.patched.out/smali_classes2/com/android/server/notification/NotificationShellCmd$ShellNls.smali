.class public Lcom/android/server/notification/NotificationShellCmd$ShellNls;
.super Landroid/service/notification/NotificationListenerService;
.source "NotificationShellCmd.java"


# static fields
.field public static sNotificationListenerInstance:Lcom/android/server/notification/NotificationShellCmd$ShellNls;


# instance fields
.field public isConnected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 775
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationShellCmd-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/notification/NotificationShellCmd$ShellNls;-><init>()V

    return-void
.end method


# virtual methods
.method public onListenerConnected()V
    .locals 1

    .line 782
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onListenerConnected()V

    .line 783
    sput-object p0, Lcom/android/server/notification/NotificationShellCmd$ShellNls;->sNotificationListenerInstance:Lcom/android/server/notification/NotificationShellCmd$ShellNls;

    const/4 v0, 0x1

    .line 784
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationShellCmd$ShellNls;->isConnected:Z

    return-void
.end method

.method public onListenerDisconnected()V
    .locals 1

    const/4 v0, 0x0

    .line 788
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationShellCmd$ShellNls;->isConnected:Z

    return-void
.end method
