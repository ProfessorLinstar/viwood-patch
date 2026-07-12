.class public Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer$1;
.super Ljava/lang/Object;
.source "RotaryInputGraphView.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;


# direct methods
.method public constructor <init>(Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer$1;->this$0:Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer$1;->this$0:Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;

    invoke-static {v0}, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->-$$Nest$fgetmIteratorCount(Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;)I

    move-result v0

    iget-object p0, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer$1;->this$0:Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;

    invoke-static {p0}, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->-$$Nest$fgetmSize(Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;)I

    move-result p0

    if-gt v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public next()Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;
    .locals 4

    .line 287
    iget-object v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer$1;->this$0:Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;

    invoke-static {v0}, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->-$$Nest$fgetmIteratorCount(Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->-$$Nest$fputmIteratorCount(Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;I)V

    .line 288
    iget-object v0, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer$1;->this$0:Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;

    invoke-static {v0}, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->-$$Nest$fgetmValues(Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;)[Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer$1;->this$0:Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;

    invoke-static {v1}, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->-$$Nest$fgetmIteratorIndex(Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;)I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    invoke-static {v1, v3}, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->-$$Nest$fputmIteratorIndex(Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;I)V

    iget-object v1, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer$1;->this$0:Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;

    invoke-static {v1}, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->-$$Nest$fgetmCapacity(Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;)I

    move-result v1

    add-int/2addr v2, v1

    iget-object p0, p0, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer$1;->this$0:Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;

    invoke-static {p0}, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;->-$$Nest$fgetmCapacity(Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer;)I

    move-result p0

    rem-int/2addr v2, p0

    aget-object p0, v0, v2

    return-object p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 277
    invoke-virtual {p0}, Lcom/android/server/input/debug/RotaryInputGraphView$CyclicBuffer$1;->next()Lcom/android/server/input/debug/RotaryInputGraphView$GraphValue;

    move-result-object p0

    return-object p0
.end method
