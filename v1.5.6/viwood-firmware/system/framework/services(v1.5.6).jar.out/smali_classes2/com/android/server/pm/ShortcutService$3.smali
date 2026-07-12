.class public Lcom/android/server/pm/ShortcutService$3;
.super Ljava/lang/Object;
.source "ShortcutService.java"

# interfaces
.implements Landroid/app/role/OnRoleHoldersChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/ShortcutService;


# direct methods
.method public static synthetic $r8$lambda$Hw8F-lF39t_TP-SvXEJwSJS38k8(Lcom/android/server/pm/ShortcutService$3;Landroid/os/UserHandle;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService$3;->lambda$onRoleHoldersChanged$0(Landroid/os/UserHandle;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .locals 0

    .line 570
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$3;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onRoleHoldersChanged$0(Landroid/os/UserHandle;)V
    .locals 0

    .line 574
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$3;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService;->handleOnDefaultLauncherChanged(I)V

    return-void
.end method

.method public onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    .line 573
    const-string v0, "android.app.role.HOME"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 574
    iget-object p1, p0, Lcom/android/server/pm/ShortcutService$3;->this$0:Lcom/android/server/pm/ShortcutService;

    new-instance v0, Lcom/android/server/pm/ShortcutService$3$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/server/pm/ShortcutService$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/ShortcutService$3;Landroid/os/UserHandle;)V

    invoke-virtual {p1, v0}, Lcom/android/server/pm/ShortcutService;->injectPostToHandler(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
