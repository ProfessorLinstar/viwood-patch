.class public Lcom/android/server/wm/WindowState$DrawHandler;
.super Ljava/lang/Object;
.source "WindowState.java"


# instance fields
.field public mConsumer:Ljava/util/function/Consumer;

.field public mSeqId:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowState;ILjava/util/function/Consumer;)V
    .locals 0

    .line 752
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 753
    iput p2, p0, Lcom/android/server/wm/WindowState$DrawHandler;->mSeqId:I

    .line 754
    iput-object p3, p0, Lcom/android/server/wm/WindowState$DrawHandler;->mConsumer:Ljava/util/function/Consumer;

    return-void
.end method
