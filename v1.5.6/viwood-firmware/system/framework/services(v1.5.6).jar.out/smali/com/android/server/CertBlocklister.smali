.class public Lcom/android/server/CertBlocklister;
.super Landroid/os/Binder;
.source "CertBlocklister.java"


# static fields
.field public static final DENYLIST_ROOT:Ljava/lang/String;

.field public static final PUBKEY_PATH:Ljava/lang/String;

.field public static final SERIAL_PATH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ANDROID_DATA"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/misc/keychain/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/CertBlocklister;->DENYLIST_ROOT:Ljava/lang/String;

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pubkey_blacklist.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/CertBlocklister;->PUBKEY_PATH:Ljava/lang/String;

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "serial_blacklist.txt"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/CertBlocklister;->SERIAL_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/CertBlocklister;->registerObservers(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method public final buildPubkeyObserver(Landroid/content/ContentResolver;)Lcom/android/server/CertBlocklister$BlocklistObserver;
    .locals 3

    .line 118
    new-instance p0, Lcom/android/server/CertBlocklister$BlocklistObserver;

    const-string/jumbo v0, "pubkey"

    sget-object v1, Lcom/android/server/CertBlocklister;->PUBKEY_PATH:Ljava/lang/String;

    const-string/jumbo v2, "pubkey_blacklist"

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/server/CertBlocklister$BlocklistObserver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    return-object p0
.end method

.method public final buildSerialObserver(Landroid/content/ContentResolver;)Lcom/android/server/CertBlocklister$BlocklistObserver;
    .locals 3

    .line 125
    new-instance p0, Lcom/android/server/CertBlocklister$BlocklistObserver;

    const-string/jumbo v0, "serial"

    sget-object v1, Lcom/android/server/CertBlocklister;->SERIAL_PATH:Ljava/lang/String;

    const-string/jumbo v2, "serial_blacklist"

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/server/CertBlocklister$BlocklistObserver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V

    return-object p0
.end method

.method public final registerObservers(Landroid/content/ContentResolver;)V
    .locals 3

    .line 133
    const-string/jumbo v0, "pubkey_blacklist"

    .line 134
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 136
    invoke-virtual {p0, p1}, Lcom/android/server/CertBlocklister;->buildPubkeyObserver(Landroid/content/ContentResolver;)Lcom/android/server/CertBlocklister$BlocklistObserver;

    move-result-object v1

    const/4 v2, 0x1

    .line 133
    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 140
    const-string/jumbo v0, "serial_blacklist"

    .line 141
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 143
    invoke-virtual {p0, p1}, Lcom/android/server/CertBlocklister;->buildSerialObserver(Landroid/content/ContentResolver;)Lcom/android/server/CertBlocklister$BlocklistObserver;

    move-result-object p0

    .line 140
    invoke-virtual {p1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
