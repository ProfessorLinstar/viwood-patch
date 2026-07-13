.class public final synthetic Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda1;->f$0:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/wm/DisplayAreaOrganizerController$$ExternalSyntheticLambda1;->f$0:I

    check-cast p1, Lcom/android/server/wm/DisplayArea;

    invoke-static {p0, p1}, Lcom/android/server/wm/DisplayAreaOrganizerController;->$r8$lambda$0W4dxQY8A11mbgGB8IAalv-CNbY(ILcom/android/server/wm/DisplayArea;)Lcom/android/server/wm/RootDisplayArea;

    move-result-object p0

    return-object p0
.end method
