.class public Lcom/android/server/TelephonyRegistry$ConfigurationProvider;
.super Ljava/lang/Object;
.source "TelephonyRegistry.java"


# direct methods
.method public static synthetic $r8$lambda$C6OjoOM6QjWKuvRgmR-CDyixxwM(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/lang/Boolean;
    .locals 2

    const-wide/32 v0, 0xae06792

    .line 280
    invoke-static {v0, v1, p0, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fiLSZuDgZl0ukk9Pd8o7udet0Lc()Ljava/lang/Integer;
    .locals 3

    const/16 v0, 0x32

    .line 244
    const-string/jumbo v1, "telephony"

    const-string/jumbo v2, "phone_state_listener_per_pid_registration_limit"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$ghEnN30A5f91qZpQoxucquw7Y6I(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/lang/Boolean;
    .locals 2

    const-wide/32 v0, 0xafc8f5e

    .line 293
    invoke-static {v0, v1, p0, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ia5Kj1BuRYcdkS9zbfBdAW8KTno(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/lang/Boolean;
    .locals 2

    const-wide/32 v0, 0x95f3323

    .line 267
    invoke-static {v0, v1, p0, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$l8nxyWNylxNGcREs5fzCI3bratg(I)Ljava/lang/Boolean;
    .locals 2

    const-wide/32 v0, 0x8fe4129

    .line 256
    invoke-static {v0, v1, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nI8f59IzWwA0Bc98ojailHfr9cI(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/lang/Boolean;
    .locals 2

    const-wide/32 v0, 0xaeae033

    .line 305
    invoke-static {v0, v1, p0, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tY0c-UBRwSdOIzZSZtsV8n9UhzY(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/lang/Boolean;
    .locals 2

    const-wide/32 v0, 0xad3e56b

    .line 316
    invoke-static {v0, v1, p0, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRegistrationLimit()I
    .locals 0

    .line 243
    new-instance p0, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda6;

    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {p0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public isActiveDataSubIdReadPhoneStateEnforcedInPlatformCompat(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 0

    .line 280
    new-instance p0, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda0;

    invoke-direct {p0, p1, p2}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-static {p0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isCallStateReadPhoneStateEnforcedInPlatformCompat(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 0

    .line 267
    new-instance p0, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda3;

    invoke-direct {p0, p1, p2}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-static {p0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isCellInfoReadPhoneStateEnforcedInPlatformCompat(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 0

    .line 293
    new-instance p0, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda4;

    invoke-direct {p0, p1, p2}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-static {p0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isDisplayInfoNrAdvancedSupported(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 0

    .line 316
    new-instance p0, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda2;

    invoke-direct {p0, p1, p2}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-static {p0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isDisplayInfoReadPhoneStateEnforcedInPlatformCompat(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 0

    .line 305
    new-instance p0, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda5;

    invoke-direct {p0, p1, p2}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-static {p0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isRegistrationLimitEnabledInPlatformCompat(I)Z
    .locals 0

    .line 256
    new-instance p0, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda1;

    invoke-direct {p0, p1}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {p0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
