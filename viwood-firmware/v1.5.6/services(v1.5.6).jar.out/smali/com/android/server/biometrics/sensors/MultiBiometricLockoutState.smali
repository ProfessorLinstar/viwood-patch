.class public Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;
.super Ljava/lang/Object;
.source "MultiBiometricLockoutState.java"


# instance fields
.field public final mCanUserAuthenticate:Ljava/util/Map;

.field public final mClock:Ljava/time/Clock;


# direct methods
.method public static synthetic $r8$lambda$Cnvi52ZROxI1SNjznEoQdMbkjAw(JLjava/util/Map$Entry;)Ljava/lang/String;
    .locals 0

    .line 169
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;

    invoke-virtual {p2, p0, p1}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Ljava/time/Clock;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->mCanUserAuthenticate:Ljava/util/Map;

    .line 47
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->mClock:Ljava/time/Clock;

    return-void
.end method


# virtual methods
.method public clearPermanentLockOut(II)V
    .locals 3

    .line 86
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->getAuthMapForUser(I)Ljava/util/Map;

    move-result-object p0

    const/16 p1, 0xfff

    const/16 v0, 0xff

    const/16 v1, 0xf

    const/4 v2, 0x0

    if-eq p2, v1, :cond_0

    if-eq p2, v0, :cond_1

    if-eq p2, p1, :cond_2

    .line 98
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "increaseLockoutTime called for invalid strength : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MultiBiometricLockoutState"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 89
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;

    invoke-static {p2, v2}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->-$$Nest$fputmPermanentlyLockedOut(Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;Z)V

    .line 92
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;

    invoke-static {p2, v2}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->-$$Nest$fputmPermanentlyLockedOut(Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;Z)V

    .line 95
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;

    invoke-static {p0, v2}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->-$$Nest$fputmPermanentlyLockedOut(Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;Z)V

    return-void
.end method

.method public clearTimedLockout(II)V
    .locals 3

    .line 120
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->getAuthMapForUser(I)Ljava/util/Map;

    move-result-object p0

    const/16 p1, 0xfff

    const/16 v0, 0xff

    const/16 v1, 0xf

    const/4 v2, 0x0

    if-eq p2, v1, :cond_0

    if-eq p2, v0, :cond_1

    if-eq p2, p1, :cond_2

    .line 132
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "increaseLockoutTime called for invalid strength : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MultiBiometricLockoutState"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 123
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;

    invoke-static {p2, v2}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->-$$Nest$fputmTimedLockout(Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;Z)V

    .line 126
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;

    invoke-static {p2, v2}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->-$$Nest$fputmTimedLockout(Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;Z)V

    .line 129
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;

    invoke-static {p0, v2}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->-$$Nest$fputmTimedLockout(Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;Z)V

    return-void
.end method

.method public final createUnlockedMap()Ljava/util/Map;
    .locals 3

    .line 51
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/16 v0, 0xf

    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;

    const/4 v2, 0x0

    .line 53
    invoke-direct {v1, v0, v2, v2}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;-><init>(Ljava/lang/Integer;ZZ)V

    .line 52
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xff

    .line 54
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;

    .line 55
    invoke-direct {v1, v0, v2, v2}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;-><init>(Ljava/lang/Integer;ZZ)V

    .line 54
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xfff

    .line 56
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;

    .line 57
    invoke-direct {v1, v0, v2, v2}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;-><init>(Ljava/lang/Integer;ZZ)V

    .line 56
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final getAuthMapForUser(I)Ljava/util/Map;
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->mCanUserAuthenticate:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->mCanUserAuthenticate:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->createUnlockedMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->mCanUserAuthenticate:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public getLockoutState(II)I
    .locals 1

    .line 144
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->getAuthMapForUser(I)Ljava/util/Map;

    move-result-object p0

    .line 145
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 146
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Error, getLockoutState for unknown strength: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " returning LOCKOUT_NONE"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MultiBiometricLockoutState"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 150
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;

    .line 151
    invoke-static {p0}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->-$$Nest$fgetmPermanentlyLockedOut(Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x2

    return p0

    .line 153
    :cond_1
    invoke-static {p0}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->-$$Nest$fgetmTimedLockout(Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public setPermanentLockOut(II)V
    .locals 3

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->getAuthMapForUser(I)Ljava/util/Map;

    move-result-object p0

    const/16 p1, 0xfff

    const/16 v0, 0xff

    const/16 v1, 0xf

    const/4 v2, 0x1

    if-eq p2, v1, :cond_0

    if-eq p2, v0, :cond_1

    if-eq p2, p1, :cond_2

    .line 81
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "increaseLockoutTime called for invalid strength : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MultiBiometricLockoutState"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 72
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;

    invoke-static {p2, v2}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->-$$Nest$fputmPermanentlyLockedOut(Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;Z)V

    .line 75
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;

    invoke-static {p2, v2}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->-$$Nest$fputmPermanentlyLockedOut(Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;Z)V

    .line 78
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;

    invoke-static {p0, v2}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->-$$Nest$fputmPermanentlyLockedOut(Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;Z)V

    return-void
.end method

.method public setTimedLockout(II)V
    .locals 3

    .line 103
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->getAuthMapForUser(I)Ljava/util/Map;

    move-result-object p0

    const/16 p1, 0xfff

    const/16 v0, 0xff

    const/16 v1, 0xf

    const/4 v2, 0x1

    if-eq p2, v1, :cond_0

    if-eq p2, v0, :cond_1

    if-eq p2, p1, :cond_2

    .line 115
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "increaseLockoutTime called for invalid strength : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MultiBiometricLockoutState"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 106
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;

    invoke-static {p2, v2}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->-$$Nest$fputmTimedLockout(Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;Z)V

    .line 109
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;

    invoke-static {p2, v2}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->-$$Nest$fputmTimedLockout(Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;Z)V

    .line 112
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;

    invoke-static {p0, v2}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->-$$Nest$fputmTimedLockout(Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 163
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 165
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->mCanUserAuthenticate:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string v2, "Permanent Lockouts\n"

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 166
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 167
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 168
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v5, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0, v1}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$$ExternalSyntheticLambda0;-><init>(J)V

    invoke-interface {v3, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    const-string v5, ", "

    .line 170
    invoke-static {v5}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 171
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "UserId="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", {"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}\n"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    return-object v2
.end method
