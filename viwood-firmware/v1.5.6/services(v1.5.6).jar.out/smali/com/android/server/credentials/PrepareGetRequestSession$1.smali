.class public abstract synthetic Lcom/android/server/credentials/PrepareGetRequestSession$1;
.super Ljava/lang/Object;
.source "PrepareGetRequestSession.java"


# static fields
.field public static final synthetic $SwitchMap$com$android$server$credentials$ProviderSession$CredentialsSource:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 81
    invoke-static {}, Lcom/android/server/credentials/ProviderSession$CredentialsSource;->values()[Lcom/android/server/credentials/ProviderSession$CredentialsSource;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/credentials/PrepareGetRequestSession$1;->$SwitchMap$com$android$server$credentials$ProviderSession$CredentialsSource:[I

    :try_start_0
    sget-object v1, Lcom/android/server/credentials/ProviderSession$CredentialsSource;->REMOTE_PROVIDER:Lcom/android/server/credentials/ProviderSession$CredentialsSource;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/android/server/credentials/PrepareGetRequestSession$1;->$SwitchMap$com$android$server$credentials$ProviderSession$CredentialsSource:[I

    sget-object v1, Lcom/android/server/credentials/ProviderSession$CredentialsSource;->AUTH_ENTRY:Lcom/android/server/credentials/ProviderSession$CredentialsSource;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
