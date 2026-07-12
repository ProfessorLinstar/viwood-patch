.class public final synthetic Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/TaskDisplayArea;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskDisplayArea;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/TaskDisplayArea;

    iput p2, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda5;->f$1:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/wm/TaskDisplayArea;

    iget p0, p0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda5;->f$1:I

    check-cast p1, Lcom/android/server/wm/TaskDisplayArea;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {v0, p0, p1, p2}, Lcom/android/server/wm/TaskDisplayArea;->$r8$lambda$a3w54gVM3Bjf6W2TQdlqDSe6OwY(Lcom/android/server/wm/TaskDisplayArea;ILcom/android/server/wm/TaskDisplayArea;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
