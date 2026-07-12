.class public final Lcom/android/server/devicepolicy/LockTaskPolicySerializer;
.super Lcom/android/server/devicepolicy/PolicySerializer;
.source "LockTaskPolicySerializer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/server/devicepolicy/PolicySerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/LockTaskPolicy;
    .locals 3

    .line 56
    const-string/jumbo p0, "packages"

    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 59
    const-string v1, "LockTaskPolicySerializer"

    if-nez p0, :cond_0

    .line 60
    const-string p0, "Error parsing LockTask policy value."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 63
    :cond_0
    const-string v2, ";"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    .line 65
    :try_start_0
    const-string v2, "flags"

    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 68
    new-instance v2, Landroid/app/admin/LockTaskPolicy;

    invoke-direct {v2, p0, p1}, Landroid/app/admin/LockTaskPolicy;-><init>(Ljava/util/Set;I)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    .line 70
    const-string p1, "Error parsing LockTask policy value"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public bridge synthetic readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/PolicyValue;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/LockTaskPolicySerializer;->readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/app/admin/LockTaskPolicy;

    move-result-object p0

    return-object p0
.end method

.method public saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/app/admin/LockTaskPolicy;)V
    .locals 2

    .line 43
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    const-string p0, ";"

    .line 47
    invoke-virtual {p2}, Landroid/app/admin/LockTaskPolicy;->getPackages()Ljava/util/Set;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 44
    const-string/jumbo v1, "packages"

    invoke-interface {p1, v0, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 48
    const-string p0, "flags"

    .line 51
    invoke-virtual {p2}, Landroid/app/admin/LockTaskPolicy;->getFlags()I

    move-result p2

    .line 48
    invoke-interface {p1, v0, p0, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public bridge synthetic saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p2, Landroid/app/admin/LockTaskPolicy;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/LockTaskPolicySerializer;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/app/admin/LockTaskPolicy;)V

    return-void
.end method
