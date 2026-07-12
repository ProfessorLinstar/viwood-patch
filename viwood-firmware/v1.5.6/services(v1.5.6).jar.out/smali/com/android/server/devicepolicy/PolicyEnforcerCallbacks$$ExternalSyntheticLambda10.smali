.class public final synthetic Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda10;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda10;->f$1:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda10;->f$0:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks$$ExternalSyntheticLambda10;->f$1:Ljava/lang/Integer;

    invoke-static {v0, p0}, Lcom/android/server/devicepolicy/PolicyEnforcerCallbacks;->$r8$lambda$QKViEWd2gERgQLjX9mqDPmUb95w(Landroid/content/Context;Ljava/lang/Integer;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p0

    return-object p0
.end method
