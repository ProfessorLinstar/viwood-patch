.class public Lcom/android/server/display/mode/SystemRequestObserver$1;
.super Ljava/lang/Object;
.source "SystemRequestObserver.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/mode/SystemRequestObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/display/mode/SystemRequestObserver;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/android/server/display/mode/SystemRequestObserver$1;->this$0:Lcom/android/server/display/mode/SystemRequestObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 0

    .line 0
    return-void
.end method

.method public binderDied(Landroid/os/IBinder;)V
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "binder died: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemRequestObserver"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/android/server/display/mode/SystemRequestObserver$1;->this$0:Lcom/android/server/display/mode/SystemRequestObserver;

    invoke-static {v0, p1}, Lcom/android/server/display/mode/SystemRequestObserver;->-$$Nest$mremoveSystemRequestedVotes(Lcom/android/server/display/mode/SystemRequestObserver;Landroid/os/IBinder;)V

    .line 52
    iget-object p0, p0, Lcom/android/server/display/mode/SystemRequestObserver$1;->this$0:Lcom/android/server/display/mode/SystemRequestObserver;

    invoke-static {p0}, Lcom/android/server/display/mode/SystemRequestObserver;->-$$Nest$fgetmDeathRecipient(Lcom/android/server/display/mode/SystemRequestObserver;)Landroid/os/IBinder$DeathRecipient;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
