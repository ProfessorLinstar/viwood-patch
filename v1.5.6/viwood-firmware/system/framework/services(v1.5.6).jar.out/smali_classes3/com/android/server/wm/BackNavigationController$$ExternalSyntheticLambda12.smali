.class public final synthetic Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda12;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/BackNavigationController$$ExternalSyntheticLambda12;->f$0:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/server/wm/TaskFragment;

    invoke-static {p0, p1}, Lcom/android/server/wm/BackNavigationController;->$r8$lambda$iba_QcmJPhU9b-dQl7x9mb0PizA(Ljava/util/ArrayList;Lcom/android/server/wm/TaskFragment;)V

    return-void
.end method
