.class public Lcom/android/server/DockObserver$DockObserverLocalService;
.super Lcom/android/server/DockObserverInternal;
.source "DockObserver.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/DockObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/DockObserver;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/android/server/DockObserver$DockObserverLocalService;->this$0:Lcom/android/server/DockObserver;

    invoke-direct {p0}, Lcom/android/server/DockObserverInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public getActualDockState()I
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/android/server/DockObserver$DockObserverLocalService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {p0}, Lcom/android/server/DockObserver;->-$$Nest$fgetmActualDockState(Lcom/android/server/DockObserver;)I

    move-result p0

    return p0
.end method
