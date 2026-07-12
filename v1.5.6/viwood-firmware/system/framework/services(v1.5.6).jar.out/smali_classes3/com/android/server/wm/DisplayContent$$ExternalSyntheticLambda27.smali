.class public final synthetic Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda27;->f$0:I

    iput p2, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda27;->f$1:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget v0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda27;->f$0:I

    iget p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda27;->f$1:I

    check-cast p1, Lcom/android/server/wm/TaskDisplayArea;

    invoke-static {v0, p0, p1}, Lcom/android/server/wm/DisplayContent;->$r8$lambda$hyu7zHFgtjAI7KSmHZsuQ6Quv9Q(IILcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method
