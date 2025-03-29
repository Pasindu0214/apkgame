.class public La/b/a/m/a/i;
.super Ljava/lang/Object;
.source "AndroidFiles.java"

# interfaces
.implements La/b/a/d;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Landroid/content/res/AssetManager;

.field public d:La/b/a/m/a/x;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/b/a/m/a/i;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, La/b/a/m/a/i;->d:La/b/a/m/a/x;

    .line 4
    iput-object p1, p0, La/b/a/m/a/i;->c:Landroid/content/res/AssetManager;

    .line 5
    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2, v1}, La/a/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    iput-object p2, p0, La/b/a/m/a/i;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)La/b/a/n/a;
    .locals 3

    .line 2
    new-instance v0, La/b/a/m/a/h;

    sget-object v1, La/b/a/d$a;->d:La/b/a/d$a;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p1, v1}, La/b/a/m/a/h;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;La/b/a/d$a;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;La/b/a/d$a;)La/b/a/n/a;
    .locals 2

    .line 1
    new-instance v0, La/b/a/m/a/h;

    sget-object v1, La/b/a/d$a;->b:La/b/a/d$a;

    if-ne p2, v1, :cond_0

    iget-object v1, p0, La/b/a/m/a/i;->c:Landroid/content/res/AssetManager;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, v1, p1, p2}, La/b/a/m/a/h;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;La/b/a/d$a;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)La/b/a/n/a;
    .locals 3

    .line 1
    new-instance v0, La/b/a/m/a/h;

    sget-object v1, La/b/a/d$a;->a:La/b/a/d$a;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p1, v1}, La/b/a/m/a/h;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;La/b/a/d$a;)V

    return-object v0
.end method

.method public c(Ljava/lang/String;)La/b/a/n/a;
    .locals 3

    .line 1
    new-instance v0, La/b/a/m/a/h;

    iget-object v1, p0, La/b/a/m/a/i;->c:Landroid/content/res/AssetManager;

    sget-object v2, La/b/a/d$a;->b:La/b/a/d$a;

    invoke-direct {v0, v1, p1, v2}, La/b/a/m/a/h;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;La/b/a/d$a;)V

    return-object v0
.end method
