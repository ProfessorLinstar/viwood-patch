.class public Lcom/android/server/wm/PresentationController$Presentation;
.super Ljava/lang/Object;
.source "PresentationController.java"


# instance fields
.field public final mHostTask:Lcom/android/server/wm/Task;

.field public final mHostTaskListener:Lcom/android/server/wm/WindowContainerListener;

.field public final mPresentationListener:Lcom/android/server/wm/WindowContainerListener;

.field public final mWin:Lcom/android/server/wm/WindowState;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowContainerListener;Lcom/android/server/wm/Task;Lcom/android/server/wm/WindowContainerListener;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/server/wm/PresentationController$Presentation;->mWin:Lcom/android/server/wm/WindowState;

    .line 55
    iput-object p2, p0, Lcom/android/server/wm/PresentationController$Presentation;->mPresentationListener:Lcom/android/server/wm/WindowContainerListener;

    .line 56
    iput-object p3, p0, Lcom/android/server/wm/PresentationController$Presentation;->mHostTask:Lcom/android/server/wm/Task;

    .line 57
    iput-object p4, p0, Lcom/android/server/wm/PresentationController$Presentation;->mHostTaskListener:Lcom/android/server/wm/WindowContainerListener;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{win: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/PresentationController$Presentation;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", display: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/PresentationController$Presentation;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hostTask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget-object p0, p0, Lcom/android/server/wm/PresentationController$Presentation;->mHostTask:Lcom/android/server/wm/Task;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
