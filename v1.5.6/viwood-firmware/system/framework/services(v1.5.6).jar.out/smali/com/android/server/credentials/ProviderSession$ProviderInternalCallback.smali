.class public interface abstract Lcom/android/server/credentials/ProviderSession$ProviderInternalCallback;
.super Ljava/lang/Object;
.source "ProviderSession.java"


# virtual methods
.method public abstract onFinalErrorReceived(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onFinalResponseReceived(Landroid/content/ComponentName;Ljava/lang/Object;)V
.end method

.method public abstract onProviderStatusChanged(Lcom/android/server/credentials/ProviderSession$Status;Landroid/content/ComponentName;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V
.end method
