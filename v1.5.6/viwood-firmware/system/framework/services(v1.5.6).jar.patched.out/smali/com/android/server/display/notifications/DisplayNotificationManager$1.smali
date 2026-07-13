.class public Lcom/android/server/display/notifications/DisplayNotificationManager$1;
.super Ljava/lang/Object;
.source "DisplayNotificationManager.java"

# interfaces
.implements Lcom/android/server/display/notifications/DisplayNotificationManager$Injector;


# instance fields
.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$flags:Lcom/android/server/display/feature/DisplayManagerFlags;

.field public final synthetic val$statsService:Lcom/android/server/display/ExternalDisplayStatsService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/ExternalDisplayStatsService;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/android/server/display/notifications/DisplayNotificationManager$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/display/notifications/DisplayNotificationManager$1;->val$flags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iput-object p3, p0, Lcom/android/server/display/notifications/DisplayNotificationManager$1;->val$statsService:Lcom/android/server/display/ExternalDisplayStatsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExternalDisplayStatsService()Lcom/android/server/display/ExternalDisplayStatsService;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/server/display/notifications/DisplayNotificationManager$1;->val$statsService:Lcom/android/server/display/ExternalDisplayStatsService;

    return-object p0
.end method

.method public getNotificationManager()Landroid/app/NotificationManager;
    .locals 1

    .line 76
    iget-object p0, p0, Lcom/android/server/display/notifications/DisplayNotificationManager$1;->val$context:Landroid/content/Context;

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    return-object p0
.end method

.method public getUsbErrorsDetector()Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector;
    .locals 2

    .line 82
    new-instance v0, Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector;

    iget-object v1, p0, Lcom/android/server/display/notifications/DisplayNotificationManager$1;->val$flags:Lcom/android/server/display/feature/DisplayManagerFlags;

    iget-object p0, p0, Lcom/android/server/display/notifications/DisplayNotificationManager$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector;-><init>(Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/content/Context;)V

    return-object v0
.end method
