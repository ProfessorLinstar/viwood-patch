.class public interface abstract Lcom/android/server/profcollect/IProfCollectd;
.super Ljava/lang/Object;
.source "IProfCollectd.java"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract get_supported_provider()Ljava/lang/String;
.end method

.method public abstract registerProviderStatusCallback(Lcom/android/server/profcollect/IProviderStatusCallback;)V
.end method

.method public abstract report(I)Ljava/lang/String;
.end method

.method public abstract trace_process(Ljava/lang/String;Ljava/lang/String;F)V
.end method

.method public abstract trace_system(Ljava/lang/String;)V
.end method
