.class public Lcom/android/server/power/WakefulnessSessionObserver$2;
.super Ljava/lang/Object;
.source "WakefulnessSessionObserver.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/WakefulnessSessionObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/power/WakefulnessSessionObserver;)V
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/android/server/power/WakefulnessSessionObserver$2;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 222
    iget-object p0, p0, Lcom/android/server/power/WakefulnessSessionObserver$2;->this$0:Lcom/android/server/power/WakefulnessSessionObserver;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/power/WakefulnessSessionObserver;->-$$Nest$mgetPhysicalDisplayPortId(Lcom/android/server/power/WakefulnessSessionObserver;I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/power/WakefulnessSessionObserver;->-$$Nest$fputmPhysicalDisplayPortIdForDefaultDisplay(Lcom/android/server/power/WakefulnessSessionObserver;I)V

    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    .line 0
    return-void
.end method
