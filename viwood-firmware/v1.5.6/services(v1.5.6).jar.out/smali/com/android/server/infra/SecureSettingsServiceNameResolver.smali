.class public final Lcom/android/server/infra/SecureSettingsServiceNameResolver;
.super Lcom/android/server/infra/ServiceNameBaseResolver;
.source "SecureSettingsServiceNameResolver.java"


# instance fields
.field public final mProperty:Ljava/lang/String;

.field public final mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/infra/SecureSettingsServiceNameResolver;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p3}, Lcom/android/server/infra/ServiceNameBaseResolver;-><init>(Landroid/content/Context;Z)V

    .line 42
    new-instance p1, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 p3, 0x3a

    invoke-direct {p1, p3}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object p1, p0, Lcom/android/server/infra/SecureSettingsServiceNameResolver;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 62
    iput-object p2, p0, Lcom/android/server/infra/SecureSettingsServiceNameResolver;->mProperty:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dumpShort(Ljava/io/PrintWriter;)V
    .locals 1

    .line 68
    const-string v0, "SecureSettingsServiceNamer: prop="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/infra/SecureSettingsServiceNameResolver;->mProperty:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public dumpShort(Ljava/io/PrintWriter;I)V
    .locals 1

    .line 74
    const-string v0, "defaultService="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/android/server/infra/ServiceNameBaseResolver;->getDefaultServiceName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public final parseColonDelimitedServiceNames(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 112
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 113
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 114
    iget-object p0, p0, Lcom/android/server/infra/SecureSettingsServiceNameResolver;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 115
    invoke-virtual {p0, p1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 116
    :goto_0
    invoke-virtual {p0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 117
    invoke-virtual {p0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object p1

    .line 118
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 125
    invoke-interface {v0, p0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public readServiceName(I)Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/server/infra/ServiceNameBaseResolver;->mContext:Landroid/content/Context;

    .line 92
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/infra/SecureSettingsServiceNameResolver;->mProperty:Ljava/lang/String;

    .line 91
    invoke-static {v0, p0, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public readServiceNameList(I)[Ljava/lang/String;
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/android/server/infra/ServiceNameBaseResolver;->mContext:Landroid/content/Context;

    .line 86
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/infra/SecureSettingsServiceNameResolver;->mProperty:Ljava/lang/String;

    .line 85
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/server/infra/SecureSettingsServiceNameResolver;->parseColonDelimitedServiceNames(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecureSettingsServiceNameResolver["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/infra/SecureSettingsServiceNameResolver;->mProperty:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
