.class public Lcom/android/server/biometrics/log/BiometricContextProvider$3;
.super Lcom/android/internal/statusbar/ISessionListener$Stub;
.source "BiometricContextProvider.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/log/BiometricContextProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/log/BiometricContextProvider;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$3;->this$0:Lcom/android/server/biometrics/log/BiometricContextProvider;

    invoke-direct {p0}, Lcom/android/internal/statusbar/ISessionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onSessionEnded(ILcom/android/internal/logging/InstanceId;)V
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$3;->this$0:Lcom/android/server/biometrics/log/BiometricContextProvider;

    invoke-static {p0}, Lcom/android/server/biometrics/log/BiometricContextProvider;->-$$Nest$fgetmSession(Lcom/android/server/biometrics/log/BiometricContextProvider;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/log/BiometricContextSessionInfo;

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/android/server/biometrics/log/BiometricContextSessionInfo;->getId()I

    move-result p0

    invoke-virtual {p2}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result p1

    if-eq p0, p1, :cond_0

    .line 151
    const-string p0, "BiometricContextProvider"

    const-string/jumbo p1, "session id mismatch"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onSessionStarted(ILcom/android/internal/logging/InstanceId;)V
    .locals 1

    .line 144
    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$3;->this$0:Lcom/android/server/biometrics/log/BiometricContextProvider;

    invoke-static {p0}, Lcom/android/server/biometrics/log/BiometricContextProvider;->-$$Nest$fgetmSession(Lcom/android/server/biometrics/log/BiometricContextProvider;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Lcom/android/server/biometrics/log/BiometricContextSessionInfo;

    invoke-direct {v0, p2}, Lcom/android/server/biometrics/log/BiometricContextSessionInfo;-><init>(Lcom/android/internal/logging/InstanceId;)V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
