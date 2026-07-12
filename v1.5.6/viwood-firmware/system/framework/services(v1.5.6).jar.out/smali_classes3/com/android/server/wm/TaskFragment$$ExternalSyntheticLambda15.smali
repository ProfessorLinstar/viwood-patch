.class public final synthetic Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda15;->f$0:Ljava/util/ArrayList;

    iput p2, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda15;->f$1:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda15;->f$0:Ljava/util/ArrayList;

    iget p0, p0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda15;->f$1:I

    check-cast p1, Lcom/android/server/wm/TaskFragment;

    invoke-static {v0, p0, p1}, Lcom/android/server/wm/TaskFragment;->$r8$lambda$UGMxRu-xvsFPCFdAb-L2NRSBgYs(Ljava/util/ArrayList;ILcom/android/server/wm/TaskFragment;)Z

    move-result p0

    return p0
.end method
