.class public final synthetic Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/AuthSession;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/AuthSession;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/biometrics/AuthSession;

    iput p2, p0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda5;->f$1:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/biometrics/AuthSession;

    iget p0, p0, Lcom/android/server/biometrics/AuthSession$$ExternalSyntheticLambda5;->f$1:I

    check-cast p1, Lcom/android/server/biometrics/BiometricSensor;

    invoke-static {v0, p0, p1}, Lcom/android/server/biometrics/AuthSession;->$r8$lambda$kXVbxXAD3wv3_6Jp9ulzyk5Wb2k(Lcom/android/server/biometrics/AuthSession;ILcom/android/server/biometrics/BiometricSensor;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
