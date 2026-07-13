.class public final synthetic Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    iput-object p2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda15;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda15;->f$2:I

    iput p4, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda15;->f$3:I

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    iget-object v1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda15;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda15;->f$2:I

    iget p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda15;->f$3:I

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->$r8$lambda$WQ7U-C4J-lNKzIvuDrSbbUN4Hy4(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;II)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
