.class public Lcom/android/server/appop/AppOpsService$8;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Lcom/android/server/pm/UserManagerInternal$UserLifecycleListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsService;)V
    .locals 0

    .line 1235
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$8;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserCreated(Landroid/content/pm/UserInfo;Ljava/lang/Object;)V
    .locals 0

    .line 1238
    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$8;->this$0:Lcom/android/server/appop/AppOpsService;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p0, p1}, Lcom/android/server/appop/AppOpsService;->-$$Nest$minitializeUserUidStates(Lcom/android/server/appop/AppOpsService;I)V

    return-void
.end method
