.class public Lcom/android/server/input/UEventManager$UEventListener$1;
.super Landroid/os/UEventObserver;
.source "UEventManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/UEventManager$UEventListener;


# direct methods
.method public constructor <init>(Lcom/android/server/input/UEventManager$UEventListener;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/android/server/input/UEventManager$UEventListener$1;->this$0:Lcom/android/server/input/UEventManager$UEventListener;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/android/server/input/UEventManager$UEventListener$1;->this$0:Lcom/android/server/input/UEventManager$UEventListener;

    invoke-virtual {p0, p1}, Lcom/android/server/input/UEventManager$UEventListener;->onUEvent(Landroid/os/UEventObserver$UEvent;)V

    return-void
.end method
