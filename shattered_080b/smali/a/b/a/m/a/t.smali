.class public La/b/a/m/a/t;
.super Ljava/lang/Object;
.source "AndroidPreferences.java"

# interfaces
.implements La/b/a/k;


# instance fields
.field public a:Landroid/content/SharedPreferences;

.field public b:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, La/b/a/m/a/t;->a:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, La/b/a/m/a/t;->b:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, La/b/a/m/a/t;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, La/b/a/m/a/t;->b:Landroid/content/SharedPreferences$Editor;

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, La/b/a/m/a/t;->b:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, La/b/a/m/a/t;->b:Landroid/content/SharedPreferences$Editor;

    :cond_0
    return-void
.end method
