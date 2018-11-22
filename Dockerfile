FROM buildpack-deps:jessie-scm

# Install mono
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF

RUN echo "deb http://download.mono-project.com/repo/debian wheezy/snapshots/5.0.0.100 main" > /etc/apt/sources.list.d/mono-xamarin.list

# Install .NET CLI dependencies
RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
		libc6 \
		libcurl3 \
		libgcc1 \
		libgssapi-krb5-2 \
		libicu52 \
		liblttng-ust0 \
		libssl1.0.0 \
		libstdc++6 \
		libunwind8 \
		libuuid1 \
		zlib1g \
		mono-devel \
		ca-certificates-mono \
		fsharp \
		mono-vbnc \
		nuget \
		git \
		curl \
		libicu-dev \
		install openssh-client \
	&& rm -rf /var/lib/apt/lists/* && rm -f /var/cache/apt/*.bin
