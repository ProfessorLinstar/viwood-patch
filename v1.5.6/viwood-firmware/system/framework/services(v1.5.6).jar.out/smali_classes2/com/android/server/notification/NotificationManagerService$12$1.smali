.class public Lcom/android/server/notification/NotificationManagerService$12$1;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/notification/NotificationManagerService$12;

.field public final synthetic val$conditions:[Landroid/service/notification/Condition;

.field public final synthetic val$info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field public final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService$12;Ljava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;[Landroid/service/notification/Condition;)V
    .locals 0

    .line 6422
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$12$1;->this$1:Lcom/android/server/notification/NotificationManagerService$12;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$12$1;->val$pkg:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$12$1;->val$info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iput-object p4, p0, Lcom/android/server/notification/NotificationManagerService$12$1;->val$conditions:[Landroid/service/notification/Condition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 6425
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12$1;->this$1:Lcom/android/server/notification/NotificationManagerService$12;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmConditionProviders(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12$1;->val$pkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12$1;->val$info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12$1;->val$conditions:[Landroid/service/notification/Condition;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/notification/ConditionProviders;->notifyConditions(Ljava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;[Landroid/service/notification/Condition;)V

    return-void
.end method
