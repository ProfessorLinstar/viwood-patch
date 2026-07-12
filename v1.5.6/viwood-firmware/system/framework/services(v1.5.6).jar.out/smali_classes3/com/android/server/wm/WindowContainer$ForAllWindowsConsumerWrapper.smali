.class public final Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;
.super Ljava/lang/Object;
.source "WindowContainer.java"

# interfaces
.implements Lcom/android/internal/util/ToBooleanFunction;


# instance fields
.field public mConsumer:Ljava/util/function/Consumer;

.field public final synthetic this$0:Lcom/android/server/wm/WindowContainer;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowContainer;)V
    .locals 0

    .line 2787
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;->this$0:Lcom/android/server/wm/WindowContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;-><init>(Lcom/android/server/wm/WindowContainer;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/android/server/wm/WindowState;)Z
    .locals 0

    .line 2797
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;->mConsumer:Ljava/util/function/Consumer;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    .line 2787
    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;->apply(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 2802
    iput-object v0, p0, Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;->mConsumer:Ljava/util/function/Consumer;

    .line 2803
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;->this$0:Lcom/android/server/wm/WindowContainer;

    invoke-static {v0}, Lcom/android/server/wm/WindowContainer;->-$$Nest$fgetmConsumerWrapperPool(Lcom/android/server/wm/WindowContainer;)Landroid/util/Pools$SynchronizedPool;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method public setConsumer(Ljava/util/function/Consumer;)V
    .locals 0

    .line 2792
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;->mConsumer:Ljava/util/function/Consumer;

    return-void
.end method
