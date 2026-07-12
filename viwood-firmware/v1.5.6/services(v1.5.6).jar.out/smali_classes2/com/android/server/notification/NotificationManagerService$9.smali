.class public Lcom/android/server/notification/NotificationManagerService$9;
.super Landroid/app/AppOpsManager$OnOpChangedInternalListener;
.source "NotificationManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public static synthetic $r8$lambda$Mvw5hsTJvkanS89R2phXe6JQS3Y(Lcom/android/server/notification/NotificationManagerService$9;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$9;->lambda$onOpChanged$0(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    .line 2926
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/app/AppOpsManager$OnOpChangedInternalListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onOpChanged$0(Ljava/lang/String;I)V
    .locals 0

    .line 2931
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mhandleNotificationPermissionChange(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)V

    return-void
.end method

.method public onOpChanged(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 2930
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$9;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v0, Lcom/android/server/notification/NotificationManagerService$9$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/server/notification/NotificationManagerService$9$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/NotificationManagerService$9;Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
