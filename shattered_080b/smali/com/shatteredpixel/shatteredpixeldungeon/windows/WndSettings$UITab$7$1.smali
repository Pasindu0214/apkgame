.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$UITab$7$1;
.super Ljava/lang/Object;
.source "WndSettings.java"

# interfaces
.implements Lcom/watabou/noosa/Game$SceneChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$UITab$7;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$2:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$UITab$7;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$UITab$7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$UITab$7$1;->this$2:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$UITab$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterCreate()V
    .locals 0

    return-void
.end method

.method public beforeCreate()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$UITab$7$1;->this$2:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$UITab$7;

    .line 2
    iget-boolean v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/CheckBox;->checked:Z

    const-string v1, "system_font"

    .line 3
    invoke-static {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDSettings;->put(Ljava/lang/String;Z)V

    return-void
.end method
