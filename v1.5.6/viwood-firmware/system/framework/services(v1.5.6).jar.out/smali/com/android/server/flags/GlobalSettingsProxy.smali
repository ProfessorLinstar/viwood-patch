.class public Lcom/android/server/flags/GlobalSettingsProxy;
.super Ljava/lang/Object;
.source "GlobalSettingsProxy.java"

# interfaces
.implements Lcom/android/server/flags/SettingsProxy;


# instance fields
.field public final mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/server/flags/GlobalSettingsProxy;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/server/flags/GlobalSettingsProxy;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method public getStringForUser(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/server/flags/GlobalSettingsProxy;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public putStringForUser(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/server/flags/GlobalSettingsProxy;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method
