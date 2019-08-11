<?xml version="1.0" encoding="utf-8"?>
<layout xmlns:android="http://schemas.android.com/apk/res/android"
        xmlns:app="http://schemas.android.com/apk/res-auto"
        xmlns:tools="http://schemas.android.com/tools">

    <data>

        <variable
                name="vm"
                type="jp.cordea.myapplication.viewmodels.MainViewModel" />
    </data>

    <android.support.design.widget.CoordinatorLayout
            android:layout_width="match_parent"
            android:layout_height="match_parent"
            tools:context="jp.cordea.myapplication.activities.MainActivity">

        <android.support.design.widget.AppBarLayout
                android:layout_width="match_parent"
                android:layout_height="wrap_content"
                android:theme="@style/AppTheme.AppBarOverlay">

            <android.support.v7.widget.Toolbar
                    android:id="@+id/toolbar"
                    android:layout_width="match_parent"
                    android:layout_height="?attr/actionBarSize"
                    android:background="?attr/colorPrimary"
                    app:popupTheme="@style/AppTheme.PopupOverlay" />

        </android.support.design.widget.AppBarLayout>

        <include
                android:id="@+id/content"
                layout="@layout/content_main"
                app:vm="@{vm}" />

        <android.support.design.widget.FloatingActionButton
                android:layout_width="wrap_content"
                android:layout_height="wrap_content"
                android:layout_gravity="bottom|end"
                android:layout_margin="@dimen/fab_margin"
                android:onClick="@{vm.onClick}"
                app:srcCompat="@drawable/ic_add_white_24dp"
                tools:ignore="VectorDrawableCompat" />

    </android.support.design.widget.CoordinatorLayout>
</layout>
