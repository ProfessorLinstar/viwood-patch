.class public Lcom/android/server/policy/PhoneWindowManager$12;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;

.field public final synthetic val$awakenFromDreams:Z

.field public final synthetic val$displayId:I


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;IZ)V
    .locals 0

    .line 5103
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$12;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager$12;->val$displayId:I

    iput-boolean p3, p0, Lcom/android/server/policy/PhoneWindowManager$12;->val$awakenFromDreams:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardExitResult(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 5107
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5109
    :try_start_0
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$12;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager$12;->val$displayId:I

    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager$12;->val$awakenFromDreams:Z

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3, p0}, Lcom/android/server/policy/PhoneWindowManager;->startDockOrHome(IZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5111
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5112
    throw p0

    :cond_0
    return-void
.end method
